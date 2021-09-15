#include <stdio.h>
#include <stdlib.h>

int main()
{
    FILE *arquivo;

    arquivo = fopen("binarios.txt", "w");
    int num;
    int bits = 8;
    int vetor[bits];
    int i = bits-1;
    int j = i;
    int indice;

    printf("Digite um número:\n");
    scanf("%d", &num);

    if(num >= 2)
    {
        while(num/2 > 0)
        {
            vetor[i] = num % 2;
            num /= 2;
            i--;
            j--;
        }
        for(i = 0; i < j; i++)
        {
            vetor[i] = 0;
        }
        vetor[j] = 1;
        for(i = 0; i < bits; i++)
        {
            printf("%2d", vetor[i]);
        }
    }
    else if(num == 1)
    {
        for(i=0; i<j;i++)
        {
            printf("%2d", vetor[i] = 0);
        }
        printf("%2d", vetor[i] = 1);
    }
    else if(num == 0)
    {
        for(i = 0; i < bits; i++)
        {
            printf("%2d\n", vetor[i] = 0);
        }
    }
    else
    {
        printf("Não definido!");
    }
}
