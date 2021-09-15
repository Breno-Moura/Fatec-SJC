programa
{
	
	funcao inicio()
	{
		inteiro numatual, numanterior, numnovo, c = 2
		escreva("Digite o 1º número: ")
		leia(numanterior)
		escreva("Digite o 2º número: ")
		leia(numatual)
		
		escreva(numanterior+" "+numatual+" ")

		enquanto(c<20)
		{
			numnovo = numatual+numanterior
			numanterior = numatual
			numatual = numnovo
			escreva(numnovo)
			escreva(" ")
			c++
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 228; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */