#include <stdio.h>
#include <stdlib.h>

int main()
{
    float lado1,lado2, perimetro, area;
    printf("Insira o lado1: ");
    scanf("%f",&lado1);
    printf("Insira o lado2: ");
    scanf("%f",&lado2);

    perimetro = lado1*2+lado2*2;
    area = lado1*lado2;

    printf("A área do retângulo é: %.1f\nO perímetro do retângulo é: %.1f",area,perimetro);
}
