programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		escreva("Cálculos com alturas\n")

		inteiro v[50], c_altura = 0
		inteiro aux
		inteiro c = 0
		inteiro moda = -1, c_moda = 0
		real media_alt = 0.0, geral_alturas = 0.0, cv = 0.0, desvio_padrao

		escreva("Insira 50 alturas\n")
		
		para(inteiro i = 0; i < 50; i++){
			escreva(i + 1, ": ")
			leia(v[i])
			geral_alturas = geral_alturas + v[i]
			c_altura++
		}
		
		media_alt = geral_alturas / c_altura
		
		para(inteiro i = 0; i < 50; i++){
			cv = cv + mat.potencia((v[i] - media_alt), 2.0)
			desvio_padrao = (mat.raiz((cv / c_altura), 2.0)) - mat.potencia(media_alt, 2.0)
		}

		para(inteiro i = 0; i < 50; i++){
			para(inteiro d = i + 1; d < 50; d++){
				se(v[i] > v[d]){
					aux = v[i]
					v[i] = v[d]
					v[d] = aux
				}
			}
		}
		
		para(inteiro i = 0; i < 50; i++){
			c++
			se(i == 50 - 1 e v[i] != v[i+1]){
				se(c > c_moda){
					c_moda = c
					moda = v[i]
				}
				c = 0
			}
		}

		escreva("A média das alturas é: ", media_alt, "\n")
		escreva("O desvio padrão das alturas é: ", desvio_padrao, "\n")
		escreva("A moda das alturas é: ", moda)
		escreva("A mediana das alturas é: ", v[50 / 2], "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 10; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */