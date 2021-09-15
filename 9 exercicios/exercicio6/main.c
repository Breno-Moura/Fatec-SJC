#include <stdio.h>
#include <stdlib.h>

int main()
{
    int lado1, lado2, lado3;
    printf("Entre com o valor de cada lado, respectivamente:\t");
    scanf("%i %i %i",&lado1,&lado2,&lado3);

    if(lado1 > lado2 + lado3){
            printf("As medidas nao formam um triangulo");

    }
    else{
        if((lado1*lado1) == (lado2*lado2)+(lado3*lado3)){
            printf("Este e um triângulo retangulo!");
        }
        else if((lado1*lado1) > (lado2*lado2) + (lado3*lado3)){
           printf("Este e um triângulo obtusangulo!");
        }
        else{
            printf("Este e um triângulo acutangulo");
        }
    }
}
