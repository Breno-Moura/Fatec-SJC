programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		escreva("Calculadora\n\n")
		
		real H = 0.0, c1 = 1.0, c2 = 1.0

		enquanto(c1 <= 99 e c2 <= 50.0){
			  H = H + c1 / c2
			  se(c1 == 99 e c2 == 50){
			  	pare
			  }
			  senao{
			  	c1 += 2
			  	c2 ++
			  }
		}
		escreva("O resultado de H é: ", mat.arredondar(H, 3))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 321; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {H, 9, 7, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */