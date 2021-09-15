programa
{
	funcao inicio()
	{
		inteiro dividendo, divisor, aux = 0, c
		
		escreva("Digite o número divisor")
		leia(divisor)
		escreva("Digite o número dividendo")
		leia(dividendo)
		
		para(c = 1; aux < dividendo; c++)
		{
			aux=aux+divisor
		}
		escreva("Resultado do quociente da divisão: ",c-1)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 303; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */