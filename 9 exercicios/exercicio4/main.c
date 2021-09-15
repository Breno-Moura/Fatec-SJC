#include <stdio.h>
#include <stdlib.h>

int main()
{
    int t, q;
    int r = 0;

    for (int c = 0; c <= 2; c++){
        scanf("%i %i", &t,&q);
        r = r+t/q;
    }
    printf("\n%i", r);
}
