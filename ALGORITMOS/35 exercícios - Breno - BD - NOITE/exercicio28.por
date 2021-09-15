programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		escreva("Calculadora")
		
		real c1 = 1.0, n, c2 = 3.0
		real H = 0.0
		
		para(c2; c2 < 20; c2 += 4){
			H = H + ((1 / mat.potencia(c1, 3.0)) - (1 / mat.potencia(c2, 3.0)))
			se(c2 < 19){
				c1 += 4
				c2 += 4
			}
			senao se(c2 == 19){
				pare
			}
		}
		escreva("O valor de H é: ", mat.arredondar(H, 3))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 121; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {H, 10, 7, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */