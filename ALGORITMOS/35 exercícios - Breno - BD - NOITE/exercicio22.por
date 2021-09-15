programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		escreva("Lançamento de Dados\n\n")
		
		inteiro d1 = 1, d2 = 6
		
		enquanto(d1 <=6 e d2 > 0){
			se(d1 + d2 == 7){
				escreva("A soma dos elementos ", d1, " e ", d2, " é igual a 7!\n")
			}
			d1++
			d2--
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 117; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */