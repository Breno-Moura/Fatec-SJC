programa
{
	funcao inicio()
	{
		real x,y,z
		
		escreva("Algoritmo Tri�ngulo\n")
		escreva("Digite o 1� n�mero: ")
		leia (x)
		escreva("Digite o 2� n�mero: ")
		leia (y)
		escreva("Digite o 3� n�mero: ")
		leia (z)

		se (x<y+z e y<x+z e z<x+y) {
			escreva("Esses valores formam um tri�ngulo")
			se ((x==y) e (y==z)){
				escreva(" EQUIL�TERO")
			}
			senao{
				se ((x==y) ou (y==z) ou (z==x)){
					escreva(" IS�SCELES")
				}
				senao{
					escreva(" ESCALENO")
				}
			}
		}
		senao{
			escreva("Os dados informados n�o formam um tri�ngulo...")
		} 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 565; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */