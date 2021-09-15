programa
{
	
	funcao inicio()
	{
	
	inteiro op
	inteiro idade
	inteiro otimo = 0, bom = 0, regular = 0, ruim = 0, pessimo = 0
	inteiro a_total = 0, porcentagem_bom, porcentagem_ruim, porcentagem_pessimo, dif_bom_regular
	inteiro a_idade = 0, media_idade, mais_velho = 0, dif_velho_or, maior_idade_otimo = 0 , maior_idade_ruim = 0
	
	para (inteiro i = 1; i <= 100; i++){
		
		escreva ("Digite sua idade: ")
		leia (idade)
		
		a_total = a_total + 1
		escreva ("Qual sua opinião sobre o filme: \n1- Ótimo \n2- Bom \n3- Regular \n4- Ruim \n5-Péssimo \n")
		leia (op)
		escolha (op){
			caso 1: op = 1
				otimo = otimo + 1
				se (i > maior_idade_otimo){
					maior_idade_otimo = i
					}
			pare
			caso 2: op = 2
				bom = bom + 1
			pare
			caso 3: op = 3
				regular = regular + 3
			pare
			caso 4: op = 4
				ruim = ruim + 4
				a_idade = a_idade + i
				se (i > maior_idade_ruim){
					maior_idade_ruim = i
					}
			pare
			caso 5: op = 5
				pessimo = pessimo + 5
				se (i > mais_velho){
					mais_velho = i
					}
			pare
			}
		
		}
		
		porcentagem_bom = a_total*(bom/100)
		porcentagem_pessimo = a_total*(pessimo/100)
		porcentagem_ruim = a_total*(regular/100)
		dif_bom_regular = porcentagem_bom - porcentagem_ruim
		media_idade = a_idade/ruim
		dif_velho_or = maior_idade_otimo - maior_idade_ruim
		
		escreva ("A quantidade de otimos é: "+otimo)
		escreva ("\nA diferença de percentual entre Bom e Regular é: "+dif_bom_regular)
		escreva ("\nA média de idade de quem votou ruim é: "+media_idade)
		escreva ("\nA porcentagem de respostas 'Pessimo' é: "+porcentagem_pessimo+" e a pessoa mais velha a escolher essa opção tem "+mais_velho+" anos")
		escreva("\nA diferença entre a pessoa mais velha que escolheu 'Ótimo' e a pessoa mais velha que escolheu 'Ruim' é: "+dif_velho_or)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 136; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */