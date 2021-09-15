#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
    FILE *arquivoE;
    FILE *arquivoS;

    arquivoE = fopen("entrada.txt","r");
    arquivoS = fopen("saida.txt", "w");

    struct entrada_arquivo
    {
        char nome_entrada[40];
        int dd_entrada;
        int mm_entrada;
        int aa_entrada;
    };
    struct entrada_arquivo entrada;

    struct tm *data_atual;
    time_t segundos;
    time(&segundos);
    data_atual = localtime(&segundos);

    int idade;
    int qt = 1;
    char aux;


    rewind(arquivoE);
    do
    {
        aux = getc(arquivoE);
        if((aux == '\n'))
        {
            qt++;
        }
    }while (aux != EOF);

    int i = 0;

    do
    {
        aux = getc(arquivoE);
        if((aux != '\n'))
        {
            rewind(arquivoE);
            for(i; i < qt; i++)
            {
                fscanf(arquivoE,"%s %i %i %i", &entrada.nome_entrada, &entrada.dd_entrada, &entrada.mm_entrada,&entrada.aa_entrada);
                idade = (data_atual->tm_year+1900) - (entrada.aa_entrada);


                if(idade > 0)
                {
                    if(entrada.mm_entrada > (data_atual->tm_mon+1) || (entrada.mm_entrada == (data_atual->tm_mon+1) && entrada.dd_entrada > (data_atual->tm_mday)))
                    {
                        idade--;
                    }
                }
                fprintf(arquivoS ,"%s %d\n", entrada.nome_entrada,idade);
            }
        }
    }while (aux != EOF);

    printf("%d", qt);

    fclose(arquivoS);
    fclose(arquivoE);
}
