programa
{
	funcao inicio()
	{
		real vp, acrescimo, desconto, valorfinal, prejuizo
		escreva("Comerciante Maluco\n")
		escreva("Informe o valor da presta��o atrasada: ")
		leia(vp)
		acrescimo = (vp*10)/100
		valorfinal = vp+acrescimo
		prejuizo = (valorfinal*10)/100
		desconto = valorfinal-prejuizo
		
		escreva ("O valor da presta��o com o acr�scimo de 10% �: "+valorfinal+"\n")
		escreva ("O valor da presta��o com juros depois de ser descontado 10% �: "+desconto+"\n")
		escreva("O comerciante teve um preju�zo de: "+prejuizo)
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 534; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */