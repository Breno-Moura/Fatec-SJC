programa
{
	
	funcao inicio()
	{
		escreva("Calculadora\n\n")
		
		real c1 = 500.0, c2 = 450.0
		real resultado = 0.0

		enquanto(c1 >= 50){
			resultado = resultado + ((2 / c1) - (5 / c2))
			se(c1 >= 50){
				c1 -= 100
				c2 -= 100		
			}
			senao{
				pare
			}
		}
		escreva("O resultado final é: ", resultado)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 300; 
 * @PONTOS-DE-PARADA = 12;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */