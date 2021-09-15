programa
{
	funcao inicio()
	{
		real x,y,z
		
		escreva("Algoritmo Triângulo\n")
		escreva("Digite o 1° número: ")
		leia (x)
		escreva("Digite o 2° número: ")
		leia (y)
		escreva("Digite o 3° número: ")
		leia (z)

		se (x<y+z e y<x+z e z<x+y) {
			escreva("Esses valores formam um triângulo")
			se ((x==y) e (y==z)){
				escreva(" EQUILÁTERO")
			}
			senao{
				se ((x==y) ou (y==z) ou (z==x)){
					escreva(" ISÓSCELES")
				}
				senao{
					escreva(" ESCALENO")
				}
			}
		}
		senao{
			escreva("Os dados informados não formam um triângulo...")
		} 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 565; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */