#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");
    int nNotas, totalA = 0, totalV = 0, i, flag;
    char primeiro, segundo;

    printf("Quem começará recebendo as notas? (V e A):\n");
    scanf("%c", &primeiro);
    if(primeiro == 'V' || primeiro == 'v'){
        segundo = 'A';
        flag = 1;
    } else if(primeiro == 'A' || primeiro == 'a') {
        segundo = 'V';
        flag = 0;
    } else {
        printf("Sintaxe incorreta - reentre (V ou A)");
        exit(0);
    }
    printf("Insira o numero de notas:\n");
    scanf("%i", &nNotas);
    int nota;
    printf("Entre com o valor da nota:\n(2, 5, 10, 20, 50, 100)\n");
    for(i = 0; i < nNotas; i = i + 1){
        scanf("%i", &nota);
        if(nota != 2 && nota != 5 && nota != 10 && nota != 20 && nota != 50 && nota != 100){
            printf("A nota inserida tem um valor inválido!");
            exit(0);
        }
        if(flag == 1){
            totalV = totalV + nota;
            flag = 0;
        } else {
            totalA = totalA + nota;
            flag = 1;
        }
    }

    printf("VOCE: %i AMIGO: %i", totalV, totalA);
    return 0;
}
