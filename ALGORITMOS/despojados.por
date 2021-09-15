programa
{
	inclua biblioteca Matematica --> mat
	inclua biblioteca Tipos --> tip
	
	funcao inicio()
	{
		real cont = 0.0
		inteiro k = 2
		inteiro x

		escreva("Entre com um número: ")
		leia (x)

		enquanto ((x>1) ou (k<=mat.raiz(x, 2.0))){
			se (x%k==0){
				cont++
				enquanto (x%k==0){
					x=x/k
					}	
				}
				k++
			}
			se(x>1){
				cont++
				}
				escreva (mat.potencia(2.0, cont) - cont - 1)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 196; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */