#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");
    FILE *pont_arquivo;

    char arq[10];
    char palavra[20];
    int cont_palavra = 0;

    printf("Informe o nome do arquivo acrescentando \".txt\" no final: \n");
    scanf("%s", &arq);

    pont_arquivo = fopen(arq,"a");

    printf("\nEscreva qualquer palavra para gravar no arquivo, quando quiser parar digite: 0\n");
    scanf("%s", &palavra);
    fprintf(pont_arquivo, "%s\n", palavra);
    if(strcmp (palavra, "0") == 0)
    {
        printf("Escreva pelo menos uma palavra para continuar!");
        exit(0);
    }

    while(strcmp(palavra,"0")!= 0)
    {
        scanf("%s", &palavra);

        if(strcmp(palavra, "0") != 0)
        {
            fprintf(pont_arquivo, "%s\n", palavra);
        }
        cont_palavra++;
    }

    printf("Dados gravados com sucesso!\n");
    printf("\nA quantidade de palavras no arquivo é: %i\n", cont_palavra);

    fclose(pont_arquivo);
}

