# ----------INPUT LISTA----------
leitura = open('entrada.txt')

# matriz = []

consumo_geral = 0
valor_consumo = 0
i = True
lista_aparelhos = list()
lista_consumo = list()
while i is True:
    try:
        aparelho = str(input("Insira o nome do aparelho:\n"))
        if aparelho == '0':
            i = False
            break
        lista_aparelhos.append(aparelho)
        quantidade = int(input("Insira a quantidade de aparelhos:\n"))
        potencia_watts_aparelho = float(input("Insira a potência em watts do aparelho:\n"))
        hora_func_dia = float(input("Insira o funcionamento do aparelho em horas/dia:\n"))
        print("------------------\n")

        a = potencia_watts_aparelho
        b = hora_func_dia
        consumo_wh_hr = a*b
        consumo_kw_hr = consumo_wh_hr/1000
        consumo = (quantidade*a*b*30)/1000
        lista_consumo.append(consumo)
        # matriz.append([aparelho, consumo])
        consumo_geral = consumo_geral + consumo
        i = True
    except ValueError:
        print("Valor inserido incorretamente\n\n\n")

# ----------ESTRUTURA----------

if consumo_geral < 31:
    valor_consumo = consumo_geral * (0.07379 + 0.08704)
elif consumo_geral > 30 and consumo_geral < 101:
    valor_consumo = consumo_geral * (0.12650 + 0.14921)
elif consumo_geral > 100 and consumo_geral < 221:
    valor_consumo = consumo_geral * (0.18975 + 0.22381)
elif consumo_geral > 220:
    valor_consumo = consumo_geral * (0.21083 + 0.24868)

# ----------OUTPUT----------

for n in range(len(lista_aparelhos)):
    print(lista_aparelhos[n], " = ", lista_consumo[n], "kW/mês")

print(f'\nConsumo Geral Mensal = {consumo_geral} kW/mês')
print(f"\nValor do consumo geral em dinheiro = R$ {valor_consumo:.2f}")

lista_aparelhos = sorted(lista_aparelhos)
# ----------BUSCA BINARIA ITENS DA LISTA APARELHOS----------


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


print("\n")
# ----------BUSCA SIMPLES DA POSIÇÃO DO ITEM NA LISTA----------


def busca_pos(lista_ordenada, n):
    if len(lista_ordenada) < n:
        return print("A posição inserida não se encontra na lista\n")
    else:
        return lista_ordenada[n-1]


print(enumerate(lista_consumo))
print(enumerate(lista_aparelhos))


