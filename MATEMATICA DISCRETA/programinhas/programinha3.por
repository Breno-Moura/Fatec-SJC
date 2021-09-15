programa
{
	
	funcao inicio()
	{
		const inteiro t=20
		const inteiro t2=40
		inteiro c1[t],c2[t], intersec[t2]
		inteiro i
		
		escreva("Insira 20 valores para o 1º conjunto:\n")
		
		para(i = 0;i < 20;i++)
		{
			escreva(i+1,":")
			leia (c1[i])
			intersec[i] = c1[i]
		}
		
		escreva("Insira 20 valores para o 2º conjunto:\n")
		
		para(i = 0;i < t;i++)
		{
			escreva(i+1,":")
			leia (c2[i])
			intersec[i + t] = c2[i]
		}
		
		para (i = 0; i < t2; i++){
			para(inteiro x = i + 1; x < t2; x++){
					se(intersec[i] == intersec[x]){
						escreva("\nIntersecção: "+intersec[i])
						}
				}
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 105; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */