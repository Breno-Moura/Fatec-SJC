class Aparelho:
    def __init__(self, nome, consumo):
        self.nome = nome
        self.consumo = consumo


lampada = Aparelho('Lâmpada', 48)
computador = Aparelho('Computador', 45)
chuveiro = Aparelho('Chuveiro Elétrico', 216)
microondas = Aparelho('Microondas', 60)

lista_aparelhos = list()

print(lista_aparelhos)
