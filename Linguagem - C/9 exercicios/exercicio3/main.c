#include <stdio.h>
#include <stdlib.h>

int main()
{
    int l1, l2, l3, a, p;
    int h, b;
    printf("Informe o valor dos lados do triângulo, respectivamente:\n");
    scanf("%i %i %i", &l1, &l2, &l3);

    p = l1 + l2 + l3;
    b = l3/2;
    h = (l1*l1)-(b * b);
    h = sqrt(h);
    a = (l3*h)/2;

    printf("\n %i %i", p, a);
}
