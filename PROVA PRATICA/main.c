#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

char rg[9];
int c, aux;
int op = 1;

void apenasNum()
    {
        if(aux != 0)
        {
            printf("\n\nVocê não pode digitar letras ou outros caracteres no seu RG!\n");
            exit(0);
        }
    }
    void digito1()
    {
        if(rg[0] == 49)
        {
            printf("\n\nO primeiro dígito é 1!");
        }
        else
        {
            printf("\n\nO primeiro dígito NÃO é 1!");
        }
    }

int main()
{
    setlocale(LC_ALL,"Portuguese");
    aux = 0;
    system("cls");

    printf("----- Prova de LP BRENAO - Verificar RG com dígito 1 -----\n\n");

    while (op == 1){

        printf("INSIRA O RG COM CADA DIGITO SEPARADO\n");

        for(int i = 0; i < 9 ; i++)
        {
            fflush(stdin);
            scanf("%c",&rg[i]);
            c = 0;
            for(int x = 48; x < 58; x++)
            {
                if(rg[i] == x)
                {
                    c++;
                }
            }
            if(c == 0)
            {
                aux++;
            }
        }

    printf("\n--SEU RG--\n%s",rg);

    apenasNum();
    digito1();


    printf("\n\n->Deseja verificar novamente?\n1-Sim\n2-Não\n");
    scanf("%i", &op);
    }

return 0;
}
