programa
{
	
	funcao inicio()
	{
		cadeia pais1,pais2,pais3
		inteiro ouro1,ouro2,ouro3
		inteiro prata1,prata2,prata3
		inteiro bronze1,bronze2,bronze3
		inteiro totalp1,totalp2,totalp3
		
		escreva("Classificação Olímpica\n")
		
		escreva("Informe o nome do 1º país: ")
		leia(pais1)
		escreva("Quantas medalhas de ouro tem esse país? ")
		leia(ouro1)
		escreva("E de prata? ")
		leia(prata1)
		escreva("E de bronze? ")
		leia(bronze1)

		escreva("Informe o nome do 2º país: ")
		leia(pais2)
		escreva("Quantas medalhas de ouro tem esse país? ")
		leia(ouro2)
		escreva("E de prata? ")
		leia(prata2)
		escreva("E de bronze? ")
		leia(bronze2)

		escreva("Informe o nome do 3º país: ")
		leia(pais3)
		escreva("Quantas medalhas de ouro tem esse país? ")
		leia(ouro3)
		escreva("E de prata? ")
		leia(prata3)
		escreva("E de bronze? ")
		leia(bronze3)

		totalp1=((ouro1*3)+(prata1*2)+(bronze1*1))/6
		totalp2=((ouro2*3)+(prata2*2)+(bronze2*1))/6
		totalp3=((ouro3*3)+(prata3*2)+(bronze3*1))/6

		escreva("<<CLASSIFICAÇÃO GERAL>>\n\n")

		se ((totalp1 > totalp2) e (totalp1 > totalp3)){
			escreva("1º Lugar:"+pais1+"\n")
			se (totalp2 > totalp3){
				escreva("2º Lugar: "+pais2+"\n")
				escreva("3º Lugar: "+pais3+"\n")
				}
			senao {
				escreva("2º Lugar: "+pais3+"\n")
				escreva("3º Lugar: "+pais2+"\n")
				}
			}
			
		se ((totalp2 > totalp1) e (totalp2 > totalp3)){
			escreva("1º Lugar:"+pais2+"\n")
			se (totalp1 > totalp3){
				escreva("2º Lugar: "+pais1+"\n")
				escreva("3º Lugar: "+pais3+"\n")
				}
			
			senao {
				escreva("2º Lugar: "+pais3+"\n")
				escreva("3º Lugar: "+pais1+"\n")
				}
		}
				
		se ((totalp3 > totalp1) e (totalp3 > totalp2)){
			escreva("1º Lugar:"+pais3+"\n")
			se (totalp1>totalp2){
				escreva("2º Lugar:"+pais1+"\n")
				escreva("3º Lugar:"+pais2+"\n")
				}
			senao {
				escreva("2º Lugar:"+pais2+"\n")
				escreva("3º Lugar:"+pais1+"\n")
				}
			}
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1043; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */