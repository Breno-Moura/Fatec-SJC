#include <stdio.h>
#include <stdlib.h>

int main()
{
    float a, b, c;
    int x;
    printf("Insira 2 coeficientes respectivamente:\n");
    scanf("%f %f", &a, &b);

    c = a + b;

    x = (c - b)/a;
    printf("\n %i", x);
}
