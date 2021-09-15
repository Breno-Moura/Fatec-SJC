# lista_simples = ["f", "b", "c", "j", "a", "e"]
# lista = [55, 10, 56, 98, 156, 89, 1.0, 2, 3.5]


def busca_binaria(lista_ordenada, elemento_procurado):
    primeiro = 0
    ultimo = len(lista_ordenada) - 1

    while primeiro <= ultimo:
        meio = (primeiro + ultimo) // 2
        elemento = lista_ordenada[meio]

        if elemento < elemento_procurado:
            primeiro = meio + 1

        elif elemento > elemento_procurado:
            ultimo = meio - 1

        else:
            return meio
    return None

# print(busca_binaria(sorted(lista), 55))
# print("\n")
# lista_simples = sorted(lista_simples)
# print(busca_binaria(lista_simples, 'j'))
#
# print(lista_simples)
#
# str = "123456"
# print(str.isdigit())
#
# test = "teste string"
# print(test.isdigit())


def busca_pos(lista_ordenada, n):
    return lista_ordenada[n-1]

# lista_teste = [1,5,6,4,9,7,8,456,123]
# print("\n")
# print(busca_pos(lista_teste, 6))


def busca_simples(lista, lista2, elemento_procurado):
    for i, elemento in enumerate(lista):
        if elemento == elemento_procurado:
            return lista[i], lista2[i]


def inserirnalista(lista, var, coluna):
    n = 0
    for i in range(len(lista)):
        if "encontrar:" in lista[n][0]:
            break
        else:
            var.append(lista[n][coluna])
            n += 1
    return var


def isfloat(value):
    try:
        float(value)
        return True
    except ValueError:
        return False


def encontrar(lista, lista2, lista3, file):
    n = 0
    for i in range(len(lista)):
        if "encontrar:" in lista[n][0]:
            if "maior" in lista[n][1]:
                lista2 = sorted(lista2)
                file.write(f"Resultado: {str(lista2[-1])}")
            elif "menor" in lista[n][1]:
                lista2 = sorted(lista2)
                file.write(f"Resultado: {str(lista2[0])}")
            elif isfloat(lista[n][1]) is True:
                lista2 = sorted(lista2)
                var = lista[n][1]
                var = float(var)
                if busca_binaria(lista2, var) is not None:
                    file.write(f"Posição do valor encontrado na lista ordenada: {busca_binaria(lista2, var)}"+"\n\n")
                    for index, item in enumerate(lista2):
                        file.write(f"{index} - {item}"+"\n")
                else:
                    file.write("O valor não se encontra em nenhuma posição da lista!")
            elif lista[n][1].isdigit() is False:
                var = lista[n][1]
                var = str(var)
                if busca_simples(lista3, lista2, var) is not None:
                    file.write(f"{var.capitalize()} tem um gasto de:")
                    file.write(f" {busca_simples(lista3, lista2, var)[1]} kW/mês")
                else:
                    file.write("Nenhum elemento encontrado na lista!")
        else:
            n += 1

