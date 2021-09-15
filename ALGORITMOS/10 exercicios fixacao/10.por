programa
{
	
	inclua biblioteca Texto --> tx
	
	funcao inicio()
	{
		cadeia numero
		caracter digito
		inteiro tmax

		escreva("Informe um número inteiro positivo para invertê-lo ")
		leia(numero)

		tmax = tx.numero_caracteres(numero)-1

		escreva("O número invertido é: ")
		para (inteiro indice = tmax; indice >= 0 ; indice--)
		{
			
			digito = tx.obter_caracter(numero, indice)

			
			escreva(digito)

		
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 420; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */