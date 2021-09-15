programa
{
	
	funcao inicio()
	{
		escreva("Calculadora\n\n")
		
		inteiro c1 = 1, c2, c3 = 2, c4
		real S = 0.0
		
		enquanto(c3 <= 10){
			c2 = c1 * c1
			c4 = c3 * c3
			S = S + (c1 / c2) 
			S = S - (c3 / c4)
			se(c3 == 10){
				pare
			}
			senao{
				c1 += 2
				c3 += 2 
			}
		}
		escreva("O valor de S é: ", S)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 97; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {S, 9, 7, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */