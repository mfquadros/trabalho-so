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

