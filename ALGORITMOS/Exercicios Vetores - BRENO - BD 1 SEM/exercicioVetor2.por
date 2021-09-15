programa
{
	
	funcao inicio()
	{
		inteiro vetor1[30], vetor2[30], aux, i

		escreva("Vetores inversos \n")
		para (i = 0; i < 30; i++){
			escreva(i + 1,":")
			leia (vetor1[i])
			}
		aux=0

		para(i = 29; i>=0; i--){
			vetor2[i] = vetor1[aux]
			aux++
			}
		escreva("Matriz de Dados\n")
		para (i = 1; i<31; i++){
			escreva(vetor2[i-1],"\n")
			
			}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 346; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */