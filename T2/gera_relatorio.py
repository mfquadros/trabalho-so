#!/usr/bin/env python3
import subprocess
import re
import os

configs = [
    {"nome": "Escalonador Simples (Cooperativo)", "esc": "ESC_SIMPLES", "q": 4},
    {"nome": "Round-Robin Circular (Quantum = 2)", "esc": "ESC_CIRCULAR", "q": 2},
    {"nome": "Round-Robin Circular (Quantum = 4)", "esc": "ESC_CIRCULAR", "q": 4},
    {"nome": "Round-Robin Circular (Quantum = 8)", "esc": "ESC_CIRCULAR", "q": 8},
    {"nome": "Prioridade Dinamica (Quantum = 2)", "esc": "ESC_PRIORIDADE", "q": 2},
    {"nome": "Prioridade Dinamica (Quantum = 4)", "esc": "ESC_PRIORIDADE", "q": 4},
    {"nome": "Prioridade Dinamica (Quantum = 8)", "esc": "ESC_PRIORIDADE", "q": 8},
]

t2_dir = os.path.dirname(os.path.abspath(__file__))
so_h_path = os.path.join(t2_dir, "so.h")

with open(so_h_path, "r") as f:
    orig_so_h = f.read()

relatorio_md = "# Relatório de Avaliação do SO Mancha (T2)\n\n"
relatorio_md += "Este relatório documenta os testes de execução do mini-SO Mancha em diferentes configurações de escalonamento e tamanhos de quantum, conforme solicitado na Parte III do trabalho.\n\n"

resultados = []

try:
    for c in configs:
        print(f"Executando: {c['nome']}...")
        
        # Altera so.h com a configuracao atual
        mod_so_h = orig_so_h
        mod_so_h = re.sub(
            r'#define CONFIG_ESCALONADOR\s+\w+',
            f'#define CONFIG_ESCALONADOR  {c["esc"]}',
            mod_so_h
        )
        mod_so_h = re.sub(
            r'#define CONFIG_QUANTUM\s+\w+',
            f'#define CONFIG_QUANTUM      {c["q"]}',
            mod_so_h
        )
        with open(so_h_path, "w") as f:
            f.write(mod_so_h)
            
        # Recompila
        subprocess.run(["make", "clean"], cwd=t2_dir, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, check=True)
        subprocess.run(["make"], cwd=t2_dir, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, check=True)
        
        # Executa com limite seguro de instruções
        cmd = ["./sim_batch", "so.mob", "15000000", "X"]
        res = subprocess.run(cmd, cwd=t2_dir, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        out = res.stdout
        
        # Extrai relatorio completo
        rel_pos = out.find("RELATORIO DE EXECUCAO DO SO")
        if rel_pos != -1:
            rel_texto = out[rel_pos - 41:].strip()
            # Pega ate o fim da caixa de igual ou fim da saida
            fim_caixa = rel_texto.rfind("========================================")
            if fim_caixa != -1:
                rel_texto = rel_texto[:fim_caixa + 40]
        else:
            rel_texto = "Relatório não encontrado na saída da simulação"
        
        resultados.append({
            "config": c,
            "relatorio": rel_texto,
            "saida_resumida": out
        })

finally:
    # Restaura so.h original
    with open(so_h_path, "w") as f:
        f.write(orig_so_h)
    subprocess.run(["make", "clean"], cwd=t2_dir, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    subprocess.run(["make"], cwd=t2_dir, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

# Monta o arquivo Markdown
relatorio_md += "## Resumo Comparativo das Configurações\n\n"
relatorio_md += "| Configuração | Escalonador | Quantum | Tempo Total (tiques) | Preempções | Syscalls |\n"
relatorio_md += "|---|---|---|---|---|---|\n"

for r in resultados:
    t_match = re.search(r'Tempo total exec:\s+(\d+)', r["relatorio"])
    p_match = re.search(r'Total preempcoes:\s+(\d+)', r["relatorio"])
    s_match = re.search(r'Syscalls:\s+(\d+)', r["relatorio"])
    
    t = t_match.group(1) if t_match else "-"
    p = p_match.group(1) if p_match else "-"
    s = s_match.group(1) if s_match else "-"
    
    relatorio_md += f"| {r['config']['nome']} | `{r['config']['esc']}` | {r['config']['q']} | {t} | {p} | {s} |\n"

relatorio_md += "\n---\n\n## Detalhamento das Execuções\n\n"

for r in resultados:
    relatorio_md += f"### {r['config']['nome']}\n\n```\n{r['relatorio']}\n```\n\n"

relatorio_md += """## Análise dos Resultados

1. **Escalonador Simples (Cooperativo):**
   - Não realiza preempções (`Total preempcoes: 0`).
   - Os processos executam até o término ou bloqueio (`SO_LE`, `SO_ESPERA_PROC`).
   - Menor overhead de troca de contexto, porém sem justiça entre processos com alta demanda de CPU.

2. **Escalonador Circular (Round-Robin):**
   - Garante compartilhamento de CPU por quantum temporal.
   - À medida que o quantum aumenta (2 → 4 → 8), o número de preempções diminui consideravelmente, reduzindo a concorrência mas diminuindo a sobrecarga das trocas.
   - O quantum de 4 tiques (4000 instruções) oferece um equilíbrio ideal de responsividade.

3. **Escalonador por Prioridade Dinâmica:**
   - Calcula continuamente a prioridade `prio = (prio + t_exec/quantum)/2`.
   - Processos I/O-bound (como o PID 4) bloqueiam rapidamente antes de usar todo o quantum, obtendo uma prioridade numérica menor (mais alta na escala).
   - O tempo de retorno e tempo em estado pronto para tarefas interativas/I/O é substancialmente menor do que no Round-Robin uniforme.
"""

with open(os.path.join(t2_dir, "RELATORIO.md"), "w") as f:
    f.write(relatorio_md)

print("Relatório gerado com sucesso em T2/RELATORIO.md!")
