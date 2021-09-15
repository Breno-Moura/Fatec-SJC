#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");
    float P, A, IMC;

    printf("Digite o seu peso:\n");
    scanf("%f", &P);

    printf("Digite a sua altura:\n");
    scanf("%f", &A);

        IMC = P / (A*A);
        printf("%f",IMC);

}
