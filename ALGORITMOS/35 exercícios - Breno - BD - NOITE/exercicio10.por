programa
{
	
	funcao inicio()
	{
		inteiro idade
		escreva("Classe Eleitoral\n")
		escreva("Digite a sua idade: ")
		leia(idade)

		se (idade<0){
			escreva("Idade inválida")
		}
		senao{
			se (idade<16){
				escreva("Não votante")
				}
				senao{
					se (idade>=18 e idade<=70){
						escreva("Eleitor Obrigatório")
						}
						senao{
							escreva("Eleitor Facultativo")
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
 * @POSICAO-CURSOR = 399; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */