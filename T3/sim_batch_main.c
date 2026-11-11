/* sim_batch_main.c -- runner headless do simulador Mancha com suporte a disco (T3).
 *
 * Uso: ./sim_batch <arquivo.mob> [imagem_disco] [max_instrucoes] [string_entrada]
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#if defined(__has_include)
#if __has_include("../mancha-master/simulador_completo/src/cpu.h")
#include "../mancha-master/simulador_completo/src/cpu.h"
#include "../mancha-master/simulador_completo/src/dispositivos.h"
#include "../mancha-master/simulador_completo/src/memoria.h"
#include "../mancha-master/simulador_completo/src/objeto.h"
#else
#include "cpu.h"
#include "dispositivos.h"
#include "memoria.h"
#include "objeto.h"
#endif
#else
#include "cpu.h"
#include "dispositivos.h"
#include "memoria.h"
#include "objeto.h"
#endif

int main(int argc, char **argv)
{
    if (argc < 2) {
        fprintf(stderr, "uso: %s arquivo.mob [imagem_disco] [max_inst] [entrada]\n", argv[0]);
        return 1;
    }

    const char *mob_arquivo = argv[1];
    const char *disco_arquivo = "disco.img";
    long max_inst = 15000000L;
    const char *entrada = "X\n";

    if (argc >= 3) {
        // Se o 2º argumento terminar em .img, é o arquivo de disco
        if (strstr(argv[2], ".img") != NULL) {
            disco_arquivo = argv[2];
            if (argc >= 4) max_inst = atol(argv[3]);
            if (argc >= 5) entrada = argv[4];
        } else {
            // Se for número, é max_inst
            max_inst = atol(argv[2]);
            if (argc >= 4) entrada = argv[3];
        }
    }

    mem_t  *mem  = mem_cria();
    disp_t *disp = disp_cria(mem);
    cpu_t  *cpu  = cpu_cria(mem, disp);

    // Monta o disco simulado na unidade 0
    char erro[256];
    if (!disp_monta_disco(disp, 0, disco_arquivo, erro, sizeof(erro))) {
        fprintf(stderr, "aviso: nao foi possivel montar disco '%s': %s\n", disco_arquivo, erro);
    }

    // Carrega o binario executavel do kernel
    simbolo_t *simbolos = NULL;
    if (!obj_carrega(mob_arquivo, mem, &simbolos, erro, sizeof(erro))) {
        fprintf(stderr, "erro ao carregar '%s': %s\n", mob_arquivo, erro);
        return 1;
    }
    obj_libera_simbolos(simbolos);

    // Injeta entrada no console para o processo de I/O
    if (entrada) {
        for (const char *p = entrada; *p; p++) {
            console_poe_entrada(disp, (unsigned char)*p);
        }
    }

    cpu_liga(cpu);

    long passos = 0;

    while (!cpu_parada(cpu) && passos < max_inst) {
        cpu_executa_1(cpu);
        passos++;

        // Exibe saida do console em tempo real
        int tam = 0;
        const char *saida = console_saida(disp, &tam);
        if (tam > 0) {
            fwrite(saida, 1, (size_t)tam, stdout);
            fflush(stdout);
            console_limpa_saida(disp);
        }
    }

    // Esvazia buffer residual
    int tam = 0;
    const char *saida = console_saida(disp, &tam);
    if (tam > 0) {
        fwrite(saida, 1, (size_t)tam, stdout);
        fflush(stdout);
        console_limpa_saida(disp);
    }

    fprintf(stderr, "\n[passos:%ld parado:%d ip:%04X evt:%s]\n",
            passos, cpu_parada(cpu), cpu_r(cpu, 7), cpu_ultimo_evento(cpu));

    cpu_destroi(cpu);
    disp_destroi(disp);
    mem_destroi(mem);
    return 0;
}
