programa
{
	
	funcao inicio()
	{
		escreva("Conjunto União\n")
		
		const inteiro t = 20
		const inteiro t2 = 40
		inteiro c1[t], c2[t], c_uniao[t2]

		escreva("Insira 20 valores para o 1º conjunto:\n")
		
		para(inteiro c = 0; c < t; c++){
			escreva(c + 1, ": ")
			leia(c1[c])
			c_uniao[c] = c1[c]
		}
		
		escreva("\n")
		escreva("Insira 20 valores para o 2º conjunto:\n")
		
		para(inteiro c = 0; c < t; c++){
			escreva(c + 1, ": ")
			leia(c2[c])
			c_uniao[c + 10] = c2[c]
		}

		escreva("\nConjunto União:\n")
		para(inteiro c = 0; c < t2; c++){
			escreva(c+1,": ")
			escreva(c_uniao[c], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 112; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */