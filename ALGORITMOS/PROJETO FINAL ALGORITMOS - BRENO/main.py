# ---------------- NOME ----------------
# BRENO GABRIEL PIRES MOURA

# ---------------- PROBLEMA ----------------
# Calcular o consumo de energia de uma residência
# e encontrar um elemento na lista, a fim de verificar o gasto,
# sendo o, maior, menor, ou um aparelho específico, ordenado
# na lista, para que seja otimizado o uso e/ou o gasto de
# energia e dinheiro.

# ---------------- DESCRIÇÃO ALGORITMO BASE ----------------
# Inserção de dados pelo arquivo de entrada (“entrada.txt”).
# Utilizando:
# aparelho quantidade potência_watts_aparelho hora_func_dia

# Para fazer a busca, no final da lista, deverá inserir a palavra "encontrar" seguida
# de dois pontos, seguido de uma das opções abaixo:
# (maior)
# (menor)
# (string)
# (valor)
# Utilizando:
# encontrar: maior

# O retorno será feito pelo arquivo de saída (“saida.txt”), os valores calculados retornarão:
# - A lista de aparelhos com os valores em kW.
# - O consumo geral mensal (kW).
# - Valor do consumo geral em dinheiro($).
# - O resultado da busca.

# ---------------- VARIÁVEIS DE ENTRADA ----------------
# aparelho
# quantidade
# potência_watts_aparelho
# hora_func_dia
# busca

# ---------------- VARIÁVEIS DE SAÍDA ----------------
# consumo_geral
# valor_consumo
# resultado_busca

# ---------------- PADRÕES ----------------
# entrada.txt
# saida.txt

# ---------------- ALGORITMO ----------------
import rotinas
import codecs

file = codecs.open("entrada.txt", "r", "utf-8")

lista = []

aparelho = []
quantidade = []
potencia_watts_aparelho = []
hora_func_dia = []
lista_consumo = []
consumo_geral = 0
valor_consumo = 0

for linha in file:
    lista.append(linha.split())
file.close()

# -----------------SEPARANDO LISTA PRINCIPAL-----------------
rotinas.inserirnalista(lista, aparelho, 0)
rotinas.inserirnalista(lista, quantidade, 1)
rotinas.inserirnalista(lista, potencia_watts_aparelho, 2)
rotinas.inserirnalista(lista, hora_func_dia, 3)

# -----------------MANIPULANDO VARIÁVEIS DA LISTA-----------------
quantidade = [int(i) for i in quantidade]
potencia_watts_aparelho = [float(i) for i in potencia_watts_aparelho]
hora_func_dia = [float(i) for i in hora_func_dia]

# -----------------CALCULANDO O CONSUMO GERAL-----------------
n = 0
for i in range(len(aparelho)):
    consumo = (quantidade[n] * potencia_watts_aparelho[n] * hora_func_dia[n] * 30) / 1000
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
rotinas.encontrar(lista, lista_consumo, aparelho, file)
