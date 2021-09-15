programa
{
	inclua biblioteca Tipos --> tip
	
	funcao inicio()
	{
		escreva("Concurso/Ranking\n")

		real notas[200]
		cadeia nomes[200], maisde70[200][2]
		logico op[200]
		inteiro c=1
		
		escreva("Insira o NOME e NOTA de 200 participantes respectivamente\n")
		para(inteiro i = 0; i < 200; i++){
			escreva("Nome ", i + 1, ": ")
			leia(nomes[i])
			escreva("Nota ", i + 1, ": ")
			leia(notas[i])
			se(notas[i] >= 70){
				maisde70[i][0] = nomes[i]
				maisde70[i][1] = tip.real_para_cadeia(notas[i])
				op[i] = verdadeiro
			}
		}
		escreva("\nRanking dos participantes que obtiveram MAIS de 70 pontos:\n")
		para(inteiro i = 0; i < 200; i++){
			se(op[i] == verdadeiro){
				escreva(c," - ", "Nome: ", maisde70[i][0])
				escreva("\tNota: ", maisde70[i][1], "\n")
				c++
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 779; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */