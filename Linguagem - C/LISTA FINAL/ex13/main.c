#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    FILE *file;
    file = fopen("agenda.txt","a");

    struct lista_telefonica
    {
        char nome[40];
        char tel[20];
    };

    int i = 0;
    struct lista_telefonica list;

    printf("\n-----Cadastro de Agenda Telefonica-----\n");
    printf("\nOBS: Digite \"0\" em Nome ou Telefone para parar\n\n");

    printf("Nome:\n");
    fflush(stdin);
    gets(list.nome);

    printf("Telefone:\n");
    fflush(stdin);
    gets(list.tel);

    printf("-----------------\n");

    if((strcmp (list.nome, "0") == 0) || (strcmp (list.tel, "0") == 0))
    {
        printf("Escreva pelo menos um registro para continuar!");
        exit(0);
    }
    else
    {
        fprintf(file, "Nome: %s\nTelefone: %s\n-----------------\n",list.nome, list.tel);
    }

    while((strcmp (list.nome , "0") != 0) || (strcmp (list.tel , "0") != 0))
    {
        printf("Nome:\n");
        fflush(stdin);
        gets(list.nome);

        printf("Telefone:\n");
        fflush(stdin);
        gets(list.tel);

        printf("-----------------\n");

        if((strcmp (list.nome, "0") == 0) || (strcmp (list.tel, "0") == 0))
        {
            exit(0);
        }
        else
        {
           fprintf(file, "Nome: %s\nTelefone: %s\n-----------------\n",list.nome, list.tel);
        }
    }

    fclose(file);

}
