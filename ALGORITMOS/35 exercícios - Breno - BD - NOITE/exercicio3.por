programa
{
	funcao inicio()
	{
		inteiro n1,n2,n3
		escreva("Digite um n�mero:")
		leia (n1)
		escreva("Digite outro n�mero:")
		leia (n2)
		escreva("Digite mais um n�mero:")
		leia (n3)

		se (n1>n2 e n1>n3){
			se (n2>n3){
				escreva (n3," ",n2," ",n1)
				}
			senao{
				escreva (n2," ",n3," ",n1)
				}
		}
		se (n2>n1 e n2>n3){
			se (n1>n3){
				escreva (n3," ",n1," ",n2)
					}
			senao {
				escreva (n1," ",n3," ",n2)
					}
		}
		se (n3>n1 e n3>n2){
			se (n1>n2){
				escreva (n2," ",n1," ",n3)
					}

			senao {
					escreva (n1," ",n2," ",n3)
					}
				}
		}
			
	}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 70; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */