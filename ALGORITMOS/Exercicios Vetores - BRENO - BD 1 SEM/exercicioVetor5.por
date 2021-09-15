programa
{
	
	funcao inicio()
	{
		escreva("Produtos\n")

		const inteiro t = 50
		cadeia nome[t]
		real custo[t], preco[t]

		escreva("Insira o NOME, CUSTO e PREÇO dos produtos, respectivamente:\n")

		para(inteiro c = 0; c < t; c++){
			escreva("Nome do Produto: \n")
			leia(nome[c])
			escreva("Custo do Produto: \n")
			leia(custo[c])
			escreva("Preço do Produto: \n")
			leia(preco[c])
		}
		para(inteiro c = 0; c < t; c++){
			se(preco[c] < custo[c] + (custo[c] * 0.1)){
				escreva("Produto: ", nome[c], " tem lucro MENOR que 10%\n")
			}
			senao se(preco[c] >= custo[c] + (custo[c] * 0.1) e preco[c] <= custo[c] + (custo[c] * 0.3)){
				escreva("Produto: ", nome[c], " tem lucro entre 10% e 30%\n")
			}
			senao se(preco[c] > custo[c] + (custo[c] * 0.3)){
				escreva("Produto: ", nome[c], " tem lucro MAIOR que 30%\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 372; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */