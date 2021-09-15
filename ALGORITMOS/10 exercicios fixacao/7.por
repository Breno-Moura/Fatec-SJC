programa
{
	
	funcao inicio()
	{
		inteiro dinheiro, conta, troco, n, i = 0
		inteiro notas[] = {50,20,10,5,2,1}
		
		escreva("Insira o valor da conta: ")
		leia(conta)
		escreva("\nInsira o valor dado em dinheiro: ")
		leia(dinheiro)

		troco=dinheiro-conta

		enquanto(troco>0){
			n = troco/notas[i]
			troco = troco%notas[i]
			se (n != 0){
				escreva(n+" notas de R$ "+notas[i],"\n")
				}
				i++
			}
			
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 408; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */