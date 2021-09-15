programa
{
	funcao inicio()
	{
		real vp, acrescimo, desconto, valorfinal, prejuizo
		escreva("Comerciante Maluco\n")
		escreva("Informe o valor da prestação atrasada: ")
		leia(vp)
		acrescimo = (vp*10)/100
		valorfinal = vp+acrescimo
		prejuizo = (valorfinal*10)/100
		desconto = valorfinal-prejuizo
		
		escreva ("O valor da prestação com o acréscimo de 10% é: "+valorfinal+"\n")
		escreva ("O valor da prestação com juros depois de ser descontado 10% é: "+desconto+"\n")
		escreva("O comerciante teve um prejuízo de: "+prejuizo)
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 534; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */