programa
{
	
	funcao inicio()
	{
		inteiro op
		escreva("Seleção de Animais\n")
		escreva("Digite 1 para SIM e 2 para NÃO\n")
		escreva("Escolha uma das opções para chegar ao animal!\n\n")

		escreva("O animal é mamífero? ")
		leia(op)
		se (op==1){
			escreva("É quadrúpede? ")
			leia(op)
			se (op==1){
				escreva("É carnívoro? ")
				leia(op)
				se (op==1){
					escreva("Animal escolhido: Leão")
					}
				senao{
					escreva("É herbívoro? ")
					se (op==1){
						escreva("Animal escolhido: Cavalo")
						}
					senao{
						escreva("Animal não disponível")
						}
					}
				}
			senao{
				escreva("É bípede? ")
				leia(op)
				se (op==1){
					escreva("É onívoro? ")
					leia(op)
					se (op==1){
						escreva("Animal escolhido: Humano")
						}
					senao{
						escreva("É frutívoro? ")
						leia(op)
						se (op==1){
							escreva("Animal escolhido: Macaco")
							}
						senao{
							escreva("Animal não disponível")
							}
						}
					}
				senao{
					escreva("É voador? ")
					leia(op)
					se (op==1){
						escreva("Animal escolhido: Morcego")
						}
					senao{
						escreva("É aquático? ")
						leia(op)
						se (op==1){
							escreva("Animal escolhido: Baleia")
							}
						senao{
							escreva("Animal não disponível")
							}
						}
					}
				}
			}
		senao{
			escreva("É uma ave? ")
			leia(op)
			se (op==1){
				escreva("É uma ave não-voadora? ")
				leia(op)
				se (op==1){
					escreva("É tropical? ")
					leia(op)
					se (op==1){
						escreva("Animal escolhido: Avestruz")
						}
					senao{
						escreva("É polar? ")
						leia(op)
						se (op==1){
							escreva("Animal escolhido: Pinguim")
							}
						senao{
							escreva("Animal não disponível")
							}
						}
					}
				senao{
					escreva("É nadadora? ")
					leia(op)
					se (op==1){
						escreva("Animal escolhido: Pato")
						}
					senao{
						escreva("De rapina? ")
						leia(op)
						se (op==1){
							escreva("Animal escolhido: Águia")
							}
						senao{
							escreva("Animal indisponível")
							}
						}
					}
				}
			senao{
				escreva("É réptil? ")
				leia(op)
				se (op==1){
					escreva("Com casco? ")
					leia(op)
					se (op==1){
						escreva("Animal escolhido: Tartaruga")
						}
					senao{
						escreva("O animal é carnívoro? ")
						leia(op)
						se (op==1){
							escreva("Animal escolhido: Crocodilo")
							}
						senao{
							escreva("O animal tem patas? ")
							leia(op)
							se (op==2){
								escreva("Animal escolhido: Cobra")
								}
							senao{
								escreva("Animal não disponível")
								}
							}
						}
					}
				senao{
					escreva("Nenhum animal encontrado")
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
 * @POSICAO-CURSOR = 1910; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */