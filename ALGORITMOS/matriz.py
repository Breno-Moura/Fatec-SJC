import busca_binaria
import codecs

matriz = ["breno", 19], ["lucca", 8], ["katia", 42], ["roberto", 49]


# lista_simples = ["f", "b", "c", "j", "a", "e", 5, 156, 1, 5.5, 8.6]

# string = "juan"

# matriz.append({'nome': string, 'idade': 10})

# matriz.sort(key=funcao_nome)
# matriz.sort(key=funcao_idade)

print(matriz)

#
# matriz2 = matriz[:]

idade = list()
i = 0
for n in range(len(matriz)):
    idade.append(matriz[0+i][1])
    i += 1

nome = list()
i = 0
for n in range(len(matriz)):
    nome.append(matriz[0+i][0])
    i += 1


idade.sort()
print(idade)
print(nome)

# print(matriz[0][0])
# print(matriz[1][0])
# print(matriz[2][0])

# i = 0
# for n in range(len(matriz)):
#     if i < len(matriz):
#         print(matriz[0+i][0], " possui", matriz[0+i][1], " anos!")
#         i += 1

matriz = sorted(matriz)

print(busca_binaria.busca_binaria(idade, 19))

# print(matriz2)
# print(lista_simples)
listinha = [10, 15, 20, 20.5, 25.6, 30]
listinha2 = ["adamantium"]


def isfloat(value):
    try:
        float(value)
        return True
    except ValueError:
        return False


print(listinha2[0].capitalize())


