programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		escreva("Convers�o \n")
		real reais, dolares
		escreva("Digite o valor em reais:")
		leia(reais)
		dolares = reais/2.4
		escreva(reais, " reais convertido em dol�res �: ", mat.arredondar(dolares, 2), " d�lares!")
	}
}
