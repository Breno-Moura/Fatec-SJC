programa
{
	funcao inicio()
	{
	     inteiro dia , mes , ano
    		escreva("Valida��o de Data\n")
    		escreva("Digite uma data qualquer\n")
    		escreva("Digite o dia: ")
    		leia(dia)
    		escreva("Digite o m�s: ")
    		leia(mes)
    		escreva("Digite o ano: ")
    		leia(ano)

    		se (ano <= 0 ou mes > 12 ou mes < 01 ou dia > 31 ou dia < 1){
    			escreva("Data Inv�lida")
    			}
    		senao
    			se (mes==2){
    				ano=ano%4
    				se (ano==0){
    					se(dia>29){
    						escreva("Data Inv�lida")
    						}
    					senao{
    						escreva("Data V�lida!")
    						}
    					}
    				senao
    					se(dia>28){
    						escreva("Data Inv�lida")
    						}
    					senao{
    						escreva("Data V�lida!")
    						}
    				}
    			senao{
    				se(mes==4 ou mes==6 ou mes==9 ou mes==11){
    					se (dia>30){
    						escreva("Data Inv�lida")
    						}
    					senao{
    						escreva("Data V�lida!")
    						}

    					}
    				senao{
    					escreva("Data V�lida!")
    					}
    				}
    			
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 520; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */