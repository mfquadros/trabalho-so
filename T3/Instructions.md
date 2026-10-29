
T3 - Paginação e processos de usuário

Oct 22, 2026

O SO implementado no T2 apresenta duas limitações relevantes:

    cada programa deve ser montado (ou compilado) para um endereço de carga próprio, distinto dos demais, o que impede executar o mesmo programa em dois processos sem montá-lo duas vezes;
    não há proteção de memória entre processos, nem entre um processo e o SO: um acesso indevido pode atingir qualquer região da memória sem detecção.

O T3 deve resolver ambas as limitações por meio do mecanismo de paginação do Mancha (mancha.pdf, secção 8). Cada processo passa a dispor de um espaço de endereçamento virtual próprio, iniciado em 0, mapeado para quadros físicos escolhidos pelo SO através de uma tabela de páginas. Isso elimina a necessidade de um endereço de carga fixo por programa e introduz proteção efetiva, já que qualquer acesso a uma página não mapeada gera uma interrupção.
A MMU do Mancha

A MMU do Mancha é implementada em hardware, na própria CPU (simulador_completo/src/cpu.c, função traduz); o SO não a implementa, apenas a configura.

Com o bit P de sr ativo, o registrador de supervisor s4 – denominado pt nesse modo – aponta para uma tabela de páginas de até 256 entradas de 2 bytes. O endereço virtual de 16 bits divide-se em página (7 bits superiores) e deslocamento (9 bits inferiores, páginas de 512 bytes, tamanho fixo em hardware). Acessos de código (busca de instrução) utilizam as entradas 0-127; acessos de dados utilizam as entradas 128-255 da mesma tabela, indexadas pelo mesmo número de página virtual.

Cada entrada contém 2 bits de tipo (0=ausente, 1=só leitura, 2=leitura/escrita limpa, 3=leitura/escrita modificada), 1 bit de acesso, e o número do quadro físico (13 bits): entrada = (tipo<<14) | (acesso<<13) | quadro; o endereço físico resultante é quadro × 512 + deslocamento. Uma entrada do tipo 0 gera a interrupção 5 (ausência de quadro); uma escrita em página do tipo 1, em modo usuário, gera a interrupção 1 – a mesma proteção por limite do T2, agora por página.

O campo pt, como cs no T2, integra o quadro de 16 palavras de cada processo, já copiado pelo escalonador a cada troca de contexto (bios_mancha/README.md, seção “O quadro de 16 palavras”). A troca de tabela de páginas ativa, portanto, não exige alteração no escalonador: basta que o campo s4 de cada processo contenha o endereço de sua própria tabela.
Interrupção 5 de falha de página

bios_mancha/src/bios.asm define a entrada 5 do vetor apontando, por padrão, para um handler de pânico (_bios_pagina_ausente), adequado apenas na ausência de paginação. O SO do T3 deve assumir o tratamento dessa interrupção.

Diferentemente de tabela_syscalls e retomada_escalonador, a entrada 5 está embutida no próprio vetor, não numa variável destinada a ser sobrescrita. Como o vetor é memória comum (bios_mancha/README.md, seção “Vetor de interrupções”), o SO pode sobrescrever o campo ip dessa entrada (endereço físico 40) com o endereço de seu handler:

        ld      r0, meu_handler_pagina_ausente
        st      r0, (40)                  ; quadro 5, campo ip

Essa instalação deve ocorrer em _kernel_inicio, antes de ei, do mesmo modo que retomada_escalonador e os handlers de tabela_syscalls.
Limitação do Mancha: ausência de registro do endereço de falta

O Mancha não dispõe de um registrador que preserve o endereço virtual causador da falta. Pela análise de traduz/cpu_interrompe em cpu.c: numa falta de busca de instrução, o ip salvo no quadro (sp+14) corresponde exatamente ao endereço que faltou, pois a falha ocorre antes do avanço de ip. Numa falta de acesso a dados, porém, a instrução já foi integralmente buscada quando o operando é traduzido – o ip salvo aponta para a instrução seguinte, e o endereço virtual do operando não é preservado em nenhum local acessível ao SO.

Essa limitação determina o escopo da Parte II: o carregamento por demanda é viável apenas para páginas de código, cujo endereço de falta é sempre conhecido; para dados, seria necessária a redecodificação da instrução anterior, o que está fora do escopo deste trabalho.
Parte I: processos de usuário isolados por paginação, carga completa

Esta parte não contempla carregamento por demanda: o objetivo é substituir o mecanismo de isolamento do T2 por paginação, com o programa integralmente carregado na criação do processo.

    Os programas de usuário passam a ser montados (ou compilados pelo mcc) isoladamente, sem .org, assumindo execução a partir do endereço virtual 0 – como em bios_mancha/exemplos/paginacao_disco/ e paginacao_disco_c/ (ver bios_mancha/README.md). Um módulo montado isoladamente nunca tem o endereço físico de destino embutido em jmp/call, de modo que o mesmo binário é válido para qualquer quadro físico.
    Deve-se definir uma convenção para armazenar esses binários no disco simulado (bios_disco_le_setor; ferramenta mob2bin.c, que converte um .mob em binário achatado) – por exemplo, uma tabela no SO com {face, trilha, setor_inicial, tamanho_em_páginas} por programa. Como o SO não suporta alocação dinâmica de memória pelos processos, um tamanho fixo de dados e pilha por processo constitui simplificação adequada, dispensando um formato de executável mais elaborado.
    Em SO_CRIA_PROC, em lugar de escolher um endereço de carga livre, o SO deve:
        criar uma tabela de páginas vazia (256 entradas, 512 bytes); como pt é um endereço físico comum, não exige alinhamento a quadro;
        alocar, do conjunto de quadros livres mantido pelo SO, quadros suficientes para o código e para a área fixa de dados/pilha;
        carregar os setores do programa, via bios_disco_le_setor, diretamente para os quadros de código alocados;
        preencher a tabela: entradas 0 a N-1 (código, tipo 1) e a partir de 128 (dados, tipo 3), apontando para os quadros correspondentes; as demais entradas permanecem com tipo 0, garantindo a proteção;
        montar o quadro inicial de 16 palavras com ip=0, sp no topo virtual da área de dados, sr com S=0, P=1, I=0, e s4 apontando para a tabela recém-criada.
    Implementar um gerenciador de quadros livres (lista ou bitmap), descontados os quadros já ocupados pelo SO e pelos processos. A memória real do Mancha é de 1MB (2048 quadros); este gerenciador será reaproveitado na Parte III.
    Em SO_MATA_PROC, devolver ao gerenciador todos os quadros do processo e destruir sua tabela de páginas.
    Instalar o handler próprio na entrada 5 do vetor. Nesta parte, toda falta de página recebida constitui erro – já que tudo o que o processo legitimamente usa foi mapeado na criação –, devendo o processo ser terminado com o mesmo mecanismo de diagnóstico usado pelo T2 para outras exceções, a partir do ip salvo (sp+14).
    Verificar a proteção: escrita na área de código (tipo 1) deve gerar a interrupção 1; acesso além das páginas atribuídas deve gerar a interrupção 5 e levar à terminação do processo, sem travar a máquina.
    Verificar que o mesmo binário pode fundamentar múltiplos processos simultâneos, cada um com seu próprio quadro de dados – viável porque o endereço virtual de código é sempre 0, cabendo à tabela de páginas de cada processo manter o isolamento.

Parte II: carregamento por demanda (só para código)

Em razão da limitação discutida anteriormente, o carregamento por demanda restringe-se a páginas de código; as páginas de dados permanecem integralmente alocadas na criação do processo, como na Parte I.

    Na criação do processo, o código não é mais carregado de imediato: as entradas de código da tabela de páginas permanecem com tipo 0, e a primeira busca de instrução (ip=0) já provoca a falta.
    No handler da interrupção 5, é necessário distinguir falta de código de falta de dados – distinção que o Mancha não oferece automaticamente. Uma solução simples: comparar o ip salvo (sp+14) com as páginas de dados conhecidas do processo (mantidas na tabela de processos do SO, não na tabela de páginas); coincidindo com uma área de dados, trata-se de falta ilegítima (processo terminado, como na Parte I); caso contrário, trata-se de falta de código, cujo endereço exato é o próprio ip salvo.
    Verificar, na tabela de processos, se o número da página de código é inferior ao tamanho conhecido do programa:
        caso não seja, trata-se de acesso ilegal – terminar o processo;
        caso seja, trata-se de falta legítima: alocar (ou liberar, ver Parte III) um quadro, ler o setor correspondente do disco (bios_disco_le_setor, agora página por página) e preencher a entrada com tipo 1 e o número do quadro;
        retomar a execução pelo mesmo ip (rete), repetindo a busca da instrução.
    Observa-se que bios_disco_le_setor é síncrono: a leitura de uma página bloqueia a máquina por completo, não apenas o processo faltoso – simplificação consistente com o tratamento de E/S de disco já adotado pela BIOS. A implementação de E/S assíncrona, suspendendo apenas o processo chamador, constitui exercício de continuação, não exigido neste trabalho.

Parte III: substituição de página e métricas

Esgotados os quadros livres do gerenciador das Partes I/II, torna-se necessário liberar um quadro em uso.

    Implementar os algoritmos FIFO e LRU, por aproximação de envelhecimento: no LRU, cada quadro mantém um contador (unsigned), deslocado um bit à direita a cada interrupção de relógio, somando-se o bit mais significativo caso a página tenha sido acessada desde a última verificação (bit de acesso da entrada, atualizado automaticamente pela CPU – cabe ao SO apenas lê-lo e zerá-lo periodicamente). A substituição recai sobre o quadro de menor contador (LRU) ou o mais antigo em uso (FIFO).
    Ao liberar um quadro, deve-se observar o tipo da entrada que o ocupa: tipo 3 (modificada) exige escrita de volta ao disco (bios_disco_escreve_setor) antes do reaproveitamento; tipos 1 e 2 podem ser descartados diretamente, pois o conteúdo permanece íntegro no disco. A entrada correspondente, na tabela de páginas do processo original (não necessariamente o que causou a falta atual), deve então ser marcada como ausente.
    Registrar, por processo, o número de faltas de página atendidas.
    Limite artificialmente o número de quadros disponibilizados a processos de usuário (bem abaixo dos ~2000 quadros reais, já que o tamanho físico de 1MB não pode ser reduzido no Mancha) e comparar o número de faltas de página e o tempo de execução (em instruções, pelo contador_tiques) conforme esse limite diminui, determinando o limite mínimo que ainda permite a conclusão dos processos de teste.
    O relatório deve apresentar as métricas obtidas, comparando FIFO e LRU e analisando o efeito da limitação de quadros disponíveis.

