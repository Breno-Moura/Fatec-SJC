programa
{
	
	funcao inicio()
	{
		real percentual, totalvotos = 0.0, c1 = 0.0, c2 = 0.0, c3 = 0.0, c4 = 0.0, nulo = 0.0,branco = 0.0
		inteiro voto
		
		escreva("Insira seu voto")
		leia(voto)
		
		enquanto(voto != 0){
			se (voto == 1)
			{
				c1 = c1++
				totalvotos = totalvotos++
			}
			se (voto == 2)
			{
				c2 = c2++
				totalvotos = totalvotos++
			}
			se (voto == 3)
			{
				c3 = c3++
				totalvotos = totalvotos++
			}
			se (voto == 4)
			{
				c4 = c4++
				totalvotos = totalvotos++
			}
			se (voto == 5)
			{
				nulo = nulo++
				totalvotos = totalvotos++
			}
			se (voto == 6)
			{
				branco = branco++
				totalvotos = totalvotos++
			}
			escreva("Insira seu voto")
			leia(voto)
		}
		escreva("Quantidade total de votos: "+totalvotos+"\n")
		percentual = (c1 / totalvotos)*100
		escreva("Total de Votos do Candidato nº 1: "+c1+" Percentual: "+percentual+"% \n")
		percentual = (c2 / totalvotos)*100
		escreva("Total de Votos do Candidato nº 2: "+c2+" Percentual: "+percentual+"% \n")
		percentual = (c3 / totalvotos)*100
		escreva("Total de Votos do Candidato nº 3: "+c3+" Percentual: "+percentual+"% \n")
		percentual = (c4 / totalvotos)*100
		escreva("Total de VotosCandidato nº 4: "+c4+" Percentual: "+percentual+"% \n")
		percentual = (branco / totalvotos)*100
		escreva("Total de Votos Brancos: "+branco+" Representando: "+percentual+"% \n")
		percentual = (nulo / totalvotos)*100
		escreva("Total de Votos Nulos: "+nulo+" Representando: "+percentual+"% \n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 764; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */