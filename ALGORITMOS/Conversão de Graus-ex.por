programa
{
	funcao inicio()
	{
		inteiro op
		real grau,conv
		escreva("Convers�o de GRAUS\n")
		escreva("Digite o n�mero correspondente para realizar um par�metro:\n")
		escreva("1-Converter CELSIUS para FAHRENHEIT\n2-Converter FAHRENHEIT para CELSIUS\n3-Sair\n")
		leia (op)
		
		escolha(op)
		{
			caso 1:
			escreva("Digite um valor para CELSIUS:")
			leia(grau)
			conv=grau*1.8+32
			escreva("O resultado em FAHRENHEIT �: "+conv)
			pare

			caso 2:
			escreva("Digite um valor para FAHRENHEIT:")
			leia(grau)
			conv=(grau-32)/1.8
			escreva("O resultado em CELSIUS �: "+conv)
			pare

			caso 3:
			escreva("Finalizando programa...")
			pare

			caso contrario:
			escreva("OCORREU UM ERRO\nDIGITE: 1, 2 OU 3")
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 538; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */