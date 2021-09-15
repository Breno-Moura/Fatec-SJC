import sys
a = input("Digite um número de 0 a 10:\n")
a = int(a)
while a > 10 or a < 0:
    print ("Número inválido!")
    a = input("Digite um número de 0 a 10:\n")
    a = int(a)
print("Número válido!")
sys.exit()