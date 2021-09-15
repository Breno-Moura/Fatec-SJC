programa
{
	
	funcao inicio()
	{
		inteiro numatual, nummaior = 0, nummenor = 0

		escreva("Conjunto de números, qual é MAIOR e qual é MENOR\n")
		escreva("Digite um número qualquer positivo ou Digite -1 para sair: ")
		leia(numatual)
		nummaior = numatual
		nummenor = numatual
		
		enquanto(numatual > -1)
		{
			se (numatual > nummaior)
			{
				nummaior= numatual
			}
			senao se(numatual < nummenor)
			{
				nummenor = numatual
			}
			
		escreva("Digite um número qualquer positivo ou Digite -1 para sair: ")
		leia(numatual)
		}
		
		escreva("O maior número é: "+nummaior+"\nO menor Numero é: "+nummenor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 142; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */