#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL,"Portuguese");

    int palavra = 0, contpalavra = 0, contlinhas = 0, contchar = 0;
    FILE *pont;
    char *caracter;
    int vetdic[26] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

    pont = fopen("arquivo.txt", "r");
    while (!feof(pont))
    {
        fread(caracter, 1, 1, pont);

        if  ((*caracter != ' ') && (*caracter != '\n') && (!palavra))
        {
            palavra = 1;
        }
        if  (((*caracter == ' ') || (*caracter == '\n')) && (palavra))
        {
            palavra = 0;
            contpalavra++;
        }
        if (*caracter == '\n')
        {
            contlinhas++;
        }
    }

    char aux;
    rewind(pont);
    do
    {
        aux = getc(pont);
        if((aux != ' ') && (aux != '\n'))
        {
            contchar++;
        }

    }while (aux != EOF);

    rewind(pont);

    do
    {
        aux = getc(pont);
        if(aux == 'a' || aux == 'A')vetdic[0]++;
        if(aux == 'b' || aux == 'B')vetdic[1]++;
        if(aux == 'c' || aux == 'C')vetdic[2]++;
        if(aux == 'd' || aux == 'D')vetdic[3]++;
        if(aux == 'e' || aux == 'E')vetdic[4]++;
        if(aux == 'f' || aux == 'F')vetdic[5]++;
        if(aux == 'g' || aux == 'G')vetdic[6]++;
        if(aux == 'h' || aux == 'H')vetdic[7]++;
        if(aux == 'i' || aux == 'I')vetdic[8]++;
        if(aux == 'j' || aux == 'J')vetdic[9]++;
        if(aux == 'k' || aux == 'K')vetdic[10]++;
        if(aux == 'l' || aux == 'L')vetdic[11]++;
        if(aux == 'm' || aux == 'M')vetdic[12]++;
        if(aux == 'n' || aux == 'N')vetdic[13]++;
        if(aux == 'o' || aux == 'O')vetdic[14]++;
        if(aux == 'p' || aux == 'P')vetdic[15]++;
        if(aux == 'q' || aux == 'Q')vetdic[16]++;
        if(aux == 'r' || aux == 'R')vetdic[17]++;
        if(aux == 's' || aux == 'S')vetdic[18]++;
        if(aux == 't' || aux == 'T')vetdic[19]++;
        if(aux == 'u' || aux == 'U')vetdic[20]++;
        if(aux == 'v' || aux == 'V')vetdic[21]++;
        if(aux == 'w' || aux == 'W')vetdic[22]++;
        if(aux == 'x' || aux == 'X')vetdic[23]++;
        if(aux == 'y' || aux == 'Y')vetdic[24]++;
        if(aux == 'z' || aux == 'Z')vetdic[25]++;

    }while (aux != EOF);

    int i = 0;
    printf("O número de palavras do arquivo é: %d\n", contpalavra+1);
    printf("O número de linhas do arquivo é: %d\n", contlinhas+1);
    printf("O número de caracteres do arquivo é: %d\n", contchar-1);

    if (vetdic[0] != 0)printf("\nA letra \"a\" repete %i vezes\n", vetdic[0]);
    if (vetdic[1] != 0)printf("A letra \"b\" repete %i vezes\n", vetdic[1]);
    if (vetdic[2] != 0)printf("A letra \"c\" repete %i vezes\n", vetdic[2]);
    if (vetdic[3] != 0)printf("A letra \"d\" repete %i vezes\n", vetdic[3]);
    if (vetdic[4] != 0)printf("A letra \"e\" repete %i vezes\n", vetdic[4]);
    if (vetdic[5] != 0)printf("A letra \"f\" repete %i vezes\n", vetdic[5]);
    if (vetdic[6] != 0)printf("A letra \"g\" repete %i vezes\n", vetdic[6]);
    if (vetdic[7] != 0)printf("A letra \"h\" repete %i vezes\n", vetdic[7]);
    if (vetdic[8] != 0)printf("A letra \"i\" repete %i vezes\n", vetdic[8]);
    if (vetdic[9] != 0)printf("A letra \"j\" repete %i vezes\n", vetdic[9]);
    if (vetdic[10] != 0)printf("A letra \"k\" repete %i vezes\n", vetdic[10]);
    if (vetdic[11] != 0)printf("A letra \"l\" repete %i vezes\n", vetdic[11]);
    if (vetdic[12] != 0)printf("A letra \"m\" repete %i vezes\n", vetdic[12]);
    if (vetdic[13] != 0)printf("A letra \"n\" repete %i vezes\n", vetdic[13]);
    if (vetdic[14] != 0)printf("A letra \"o\" repete %i vezes\n", vetdic[14]);
    if (vetdic[15] != 0)printf("A letra \"p\" repete %i vezes\n", vetdic[15]);
    if (vetdic[16] != 0)printf("A letra \"q\" repete %i vezes\n", vetdic[16]);
    if (vetdic[17] != 0)printf("A letra \"r\" repete %i vezes\n", vetdic[17]);
    if (vetdic[18] != 0)printf("A letra \"s\" repete %i vezes\n", vetdic[18]);
    if (vetdic[19] != 0)printf("A letra \"t\" repete %i vezes\n", vetdic[19]);
    if (vetdic[20] != 0)printf("A letra \"u\" repete %i vezes\n", vetdic[20]);
    if (vetdic[21] != 0)printf("A letra \"v\" repete %i vezes\n", vetdic[21]);
    if (vetdic[22] != 0)printf("A letra \"w\" repete %i vezes\n", vetdic[22]);
    if (vetdic[23] != 0)printf("A letra \"x\" repete %i vezes\n", vetdic[23]);
    if (vetdic[24] != 0)printf("A letra \"y\" repete %i vezes\n", vetdic[24]);
    if (vetdic[25] != 0)printf("A letra \"z\" repete %i vezes\n", vetdic[25]);
}
