programa
{
	funcao inicio()
	{
	     inteiro dia , mes , ano
    		escreva("Validação de Data\n")
    		escreva("Digite uma data qualquer\n")
    		escreva("Digite o dia: ")
    		leia(dia)
    		escreva("Digite o mês: ")
    		leia(mes)
    		escreva("Digite o ano: ")
    		leia(ano)

    		se (ano <= 0 ou mes > 12 ou mes < 01 ou dia > 31 ou dia < 1){
    			escreva("Data Inválida")
    			}
    		senao
    			se (mes==2){
    				ano=ano%4
    				se (ano==0){
    					se(dia>29){
    						escreva("Data Inválida")
    						}
    					senao{
    						escreva("Data Válida!")
    						}
    					}
    				senao
    					se(dia>28){
    						escreva("Data Inválida")
    						}
    					senao{
    						escreva("Data Válida!")
    						}
    				}
    			senao{
    				se(mes==4 ou mes==6 ou mes==9 ou mes==11){
    					se (dia>30){
    						escreva("Data Inválida")
    						}
    					senao{
    						escreva("Data Válida!")
    						}

    					}
    				senao{
    					escreva("Data Válida!")
    					}
    				}
    			
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 520; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */