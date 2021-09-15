programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		escreva("Conversão \n")
		real reais, dolares
		escreva("Digite o valor em reais:")
		leia(reais)
		dolares = reais/2.4
		escreva(reais, " reais convertido em doláres é: ", mat.arredondar(dolares, 2), " dólares!")
	}
}
