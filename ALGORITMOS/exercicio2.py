import sys
u = 0
s = 0
def validacao(s,u):
    u = input("Digite o usuário: \n")
    u = str(u)
    #-------------------------------#
    s = input("Digite sua senha: \n")
    s = str(s)
    #-------------------------------#
    try:
        while u==s:
            print("Usuário e Senha idênticos, reentre")
            s = input("Digite sua senha: \n")
            s = str(s)
    except:
        print("Erro no processamento")
    print("Cadastrado com sucesso!")

validacao(s,u)