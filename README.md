# Trabalhos de Sistemas Operacionais (SO)

Repositório contendo os trabalhos práticos da disciplina de Sistemas Operacionais baseados na arquitetura e simulador **Mancha**.

---

## 📂 Trabalhos

### [Trabalho 1 (T1)](file:///Users/mateusquadros/Desktop/Aulas/SO/trabalho-so/T1)
Implementação inicial voltada à execução de programas dedicados no simulador, compreensão do ciclo de instruções da CPU Mancha e manuseio de registradores e memória.

---

### [Trabalho 2 (T2) — Mini Sistema Operacional Multiprogramado](file:///Users/mateusquadros/Desktop/Aulas/SO/trabalho-so/T2)
Mini-SO completo com suporte a:
- **Multiprogramação** com isolamento de privilégio (Modo Supervisor `SR.S=1` vs Modo Usuário `SR.S=0, SR.I=0`).
- **5 Chamadas de Sistema**: `SO_LE`, `SO_ESCREVE`, `SO_CRIA_PROC`, `SO_MATA_PROC`, `SO_ESPERA_PROC`.
- **Bloqueio de Processos**: bloqueio em E/S de console e sincronização de término de filhos (`SO_ESPERA_PROC`), além de laço ocioso (`idle loop`).
- **3 Escalonadores**: Cooperativo/Simples, Round-Robin Circular preemptivo e Prioridade Dinâmica preemptiva com desempate circular.
- **Relatório e Métricas**: coleta abrangente de estatísticas de execução, preempções, interrupções e tempos em cada estado.

Para detalhes completos de funcionamento, compilação e execução do T2, consulte o [T2/README.md](file:///Users/mateusquadros/Desktop/Aulas/SO/trabalho-so/T2/README.md).

---

### [Trabalho 3 (T3) — Paginação, Proteção e Memória Virtual](file:///Users/mateusquadros/Desktop/Aulas/SO/trabalho-so/T3)
Extensão do SO com suporte completo a **memória virtual paginada**, **proteção por hardware**, **carregamento sob demanda** e **substituição de páginas**, cobrindo os requisitos das Partes I, II e III:
- **Parte I — Carga Completa com Isolamento Real por Páginas**:
  - Compilação dos programas isoladamente a partir do endereço virtual 0 (sem `.org` físico fixo).
  - Configuração da **MMU do Mancha**: tabela de páginas de 256 entradas de 2 bytes (entradas 0–127 para código com `tipo 1` / somente leitura; 128–255 para dados com `tipo 3` / leitura e escrita).
  - Chaveamento automático de tabela de páginas via registrador supervisor `s4` (`pt`).
  - Execução simultânea de múltiplas instâncias do mesmo binário (`prog_comp_a` instanciado duas vezes com dados isolados).
  - Proteção por hardware: tentativa de escrita em código gera **Interrupção 1**, finalizando o processo faltoso (`prog_protecao`) com segurança.
- **Parte II — Carregamento de Código por Demanda (Demand Paging)**:
  - Processos iniciam apenas com o quadro de dados/pilha alocado; código inicia como `tipo 0` (ausente).
  - Tratamento da **Interrupção 5** (falta de página) instalada no endereço físico `(40)` do vetor de interrupções.
  - Distinção precisa entre faltas legítimas de código e acessos ilegais além do binário.
  - Carga transparente página por página a partir do disco simulado (`disco.img`) e repetição da instrução via `rete`.
- **Parte III — Algoritmos de Substituição e Métricas**:
  - Implementação dos algoritmos **FIFO** e **LRU por Envelhecimento (Aging de 16 bits)**.
  - Tratamento de páginas modificadas (`tipo 3`) com swap-out síncrono para os setores reservados do disco.
  - Coleta detalhada de métricas globais e individuais por processo (faltas de página, preempções, tempos em fila).
  - Investigação da escassez de memória: determinação experimental do limite mínimo viável de quadros (conclusão com sucesso a partir de 6 quadros físicos).
  - Documento comparativo com matriz de 15 testes gerado em [T3/RELATORIO.md](file:///Users/mateusquadros/Desktop/Aulas/SO/trabalho-so/T3/RELATORIO.md).

Para detalhes completos de funcionamento, compilação e execução do T3, consulte o [T3/README.md](file:///Users/mateusquadros/Desktop/Aulas/SO/trabalho-so/T3/README.md).

