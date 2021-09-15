programa
{
	funcao inicio()
	{
		inteiro vetor1[29],vetor2[29],a

		para(inteiro i=0;i<29;i++){
			escreva(i+1,": ")
			leia(a)
			vetor1[i]=a
			se (i%2==0){
				vetor2[i] = i*2
				
				}
			senao{
				vetor2[i] = i*3
				}
			}
		escreva("Resultado dos Valores:\n")
		para(inteiro c=0;c<29;c++){
			escreva(c+1,": ",vetor2[c],"\n")
			}
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 334; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */