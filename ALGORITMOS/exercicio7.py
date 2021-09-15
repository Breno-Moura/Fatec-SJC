# coding:utf-8
import sys

notas = [50,20,10,5,2,1]

conta = int(input("Digite o valor da conta: "))
dinheiro = int(input("Digite o valor do dinheiro dado: "))

troco = dinheiro - conta

i = 0

if dinheiro >= conta:
    print ("-" * 20)
    print ("\t\tTROCO")
    print ("-" * 20)
    while troco > 0:
        x = troco / notas[i]
        troco = troco % notas[i]
        if x != 0:
            print ("%d nota(s) de R$ %d " % (x,notas[i]))
        i += 1
else:
    print ("-"*45)
    print (str.upper("Dinheiro insufisciente para pagar a conta!"))
    print ("-" * 45)
    sys.exit()
print ("-"*20)