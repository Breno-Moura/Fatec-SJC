import busca_binaria
import codecs

file = codecs.open("entrada.txt", "r", "utf-8")

lista = list()

aparelho = list()
quantidade = list()
potencia_watts_aparelho = list()
hora_func_dia = list()
lista_consumo = list()
consumo_geral = 0
valor_consumo = 0

for linha in file:
    lista.append(linha.split())
file.close()

# -----------------SEPARANDO LISTA PRINCIPAL-----------------
busca_binaria.inserirnalista(lista, aparelho, 0)
busca_binaria.inserirnalista(lista, quantidade, 1)
busca_binaria.inserirnalista(lista, potencia_watts_aparelho, 2)
busca_binaria.inserirnalista(lista, hora_func_dia, 3)

# -----------------MANIPULANDO VARIÁVEIS DA LISTA-----------------
quantidade = [int(i) for i in quantidade]
potencia_watts_aparelho = [float(i) for i in potencia_watts_aparelho]
hora_func_dia = [float(i) for i in hora_func_dia]

# -----------------CALCULANDO O CONSUMO GERAL-----------------
n = 0
for i in range(len(aparelho)):
    consumo = (quantidade[n]*potencia_watts_aparelho[n]*hora_func_dia[n]*30)/1000
    lista_consumo.append(consumo)
    consumo_geral = consumo_geral + consumo
    n += 1

# -----------------CALCULANDO O VALOR DO CONSUMO EM R$ (BASEADO NAS TARIFAS DO ESTADO DE SÃO PAULO)-----------------
if consumo_geral < 31:
    valor_consumo = consumo_geral * (0.07379 + 0.08704)
elif 101 > consumo_geral > 30:
    valor_consumo = consumo_geral * (0.12650 + 0.14921)
elif 221 > consumo_geral > 100:
    valor_consumo = consumo_geral * (0.18975 + 0.22381)
elif consumo_geral > 220:
    valor_consumo = consumo_geral * (0.21083 + 0.24868)

# -----------------OUTPUT-----------------
# print("#"*12+"-"+"APARELHOS"+"-"+"#"*12)
# for n in range(len(aparelho)):
#     print(aparelho[n], " = ", lista_consumo[n], "kW/mês")
# print("#"*13+"-"+"CONSUMO"+"-"+"#"*13)
#
# print(f'Consumo Geral Mensal = {consumo_geral} kW/mês')
#
# print(f"Valor do consumo geral em dinheiro = R$ {valor_consumo:.2f}")
#
# print("#"*14+"-"+"BUSCA"+"-"+"#"*14)
# print(f"Busca: {lista[-1][1]}")
# busca_binaria.encontrar(lista, lista_consumo, aparelho)

# -----------------OUTPUT-----------------
file = codecs.open("saida.txt", "w", "utf-8")

file.write("#"*12+"-"+"APARELHOS"+"-"+"#"*12+"\n")
for n in range(len(aparelho)):
    file.write(aparelho[n])
    file.write(" = ")
    file.write(str(lista_consumo[n]))
    file.write(" kW/mês")
    file.write("\n")
file.write("#"*13+"-"+"CONSUMO"+"-"+"#"*13+"\n")

file.write(f'Consumo Geral Mensal = {consumo_geral} kW/mês'+"\n")
file.write(f"Valor do consumo geral em dinheiro = R$ {valor_consumo:.2f}"+"\n")
file.write("#"*14+"-"+"BUSCA"+"-"+"#"*14+"\n")
file.write(f"Busca: {lista[-1][1]}"+"\n")
busca_binaria.encontrar(lista, lista_consumo, aparelho, file)
