programa
{
	
	funcao inicio()
	{
		inteiro elevador = 0, periodo
		real  a_elevador1 = 0.0, a_elevador2 = 0.0, a_elevador3 = 0.0
		real a_periodo_matutino = 0.0, a_periodo_vespertino = 0.0, a_periodo_noturno = 0.0
		real periodo_total = 0.0, p_periodo_media, media_utilizacao, porc_periodo_n, dif_mais_pro_menos
		
		enquanto (elevador < 4){
			periodo_total = periodo_total + 1
			escreva ("Qual elevador você mais usa: \n1- Elevador 1 \n2- Elevador 2 \n3- Elevador 3\n")
			leia (elevador)
			escolha (elevador){
				caso 1: elevador = 1
				a_elevador1 = a_elevador1 + 1
				pare
				caso 2: elevador = 2
				a_elevador2 = a_elevador2 + 1
				pare
				caso 3: elevador = 3
				a_elevador3 = a_elevador3 + 1
				pare
			}
			escreva ("Em que parte do dia você usa o elevador: \n1-Matutino \n2-Vespertino \n3- Norturno \n")
			leia (periodo)
			escolha (periodo){
				caso 1: periodo = 1
				a_periodo_matutino = a_periodo_matutino + 1
				pare
				caso 2: periodo = 2
				a_periodo_vespertino = a_periodo_vespertino + 1
				pare
				caso 3: periodo = 3
				a_periodo_noturno = a_periodo_noturno + 1
				pare
			}			
			}
			
			se (a_elevador1 > a_elevador2 e a_elevador1 > a_elevador3)
			{
				se (a_periodo_matutino > a_periodo_vespertino e a_periodo_matutino > a_periodo_noturno)
				{
					escreva ("O elevador mais frequentado é o número 1 e o seu maior fluxo é no periodo matutino\n")
				}
				senao se (a_periodo_vespertino > a_periodo_matutino e a_periodo_vespertino > a_periodo_noturno)
				{
					escreva ("O elevador mais frequentado é o número 1 e o seu maior fluxo é no periodo vespertino\n")
				}
				senao
				{
					escreva ("O elevador mais frequentado é o número 1 e o seu maior fluxo é no periodo noturno\n")
				}	
			}
			senao se (a_elevador2 > a_elevador1 e a_elevador2 > a_elevador3)
			{
				se (a_periodo_matutino > a_periodo_vespertino e a_periodo_matutino > a_periodo_noturno)
				{
					escreva ("O elevador mais frequentado é o número 2 e o seu maior fluxo é no periodo matutino\n")
				}
				senao se (a_periodo_vespertino > a_periodo_matutino e a_periodo_vespertino > a_periodo_noturno)
				{
					escreva ("O elevador mais frequentado é o número 2 e o seu maior fluxo é no periodo vespertino\n")
				}
				senao
				{
					escreva ("O elevador mais frequentado é o número 2 e o seu maior fluxo é no periodo noturno\n")
				}		
			}
			senao
			{
				se (a_periodo_matutino > a_periodo_vespertino e a_periodo_matutino > a_periodo_noturno)
				{
					escreva ("O elevador mais frequentado é o número 3 e o seu maior fluxo é no periodo matutino\n")
				}
				senao se (a_periodo_vespertino > a_periodo_matutino e a_periodo_vespertino > a_periodo_noturno)
				{
					escreva ("O elevador mais frequentado é o número 3 e o seu maior fluxo é no periodo vespertino\n")
				}
				senao
				{
					escreva ("O elevador mais frequentado é o número 3 e o seu maior fluxo é no periodo noturno\n")
				}		
			}
			
			se (a_periodo_matutino > a_periodo_vespertino e a_periodo_matutino > a_periodo_noturno)
			{
				se (a_elevador1 > a_elevador2 e a_elevador1 > a_elevador3)
				{
					escreva ("O periodo mais usado de todos é o matutino e pertence ao elevador 1\n")
				}
				senao se (a_elevador2 > a_elevador1 e a_elevador2 > a_elevador3)
				{
					escreva ("O periodo mais usado de todos é o matutino e pertence ao elevador 2\n")
				}
				senao
				{
					escreva ("O periodo mais usado de todos é o matutino e pertence ao elevador 3\n")
				}	
			}
			senao se (a_periodo_vespertino > a_periodo_matutino e a_periodo_vespertino > a_periodo_noturno)
			{
				se (a_elevador1 > a_elevador2 e a_elevador1 > a_elevador3)
				{
					escreva ("O periodo mais usado de todos é o vespertino e pertence ao elevador 1\n")
				}
				senao se (a_elevador2 > a_elevador1 e a_elevador2 > a_elevador3)
				{
					escreva ("O periodo mais usado de todos é o vespertino e pertence ao elevador 2\n")
				}
				senao
				{
					escreva ("O periodo mais usado de todos é o vespertino e pertence ao elevador 3\n")
				}	
			}		
			
			senao
			{
				se (a_elevador1 > a_elevador2 e a_elevador1 > a_elevador3)
				{
					escreva ("O periodo mais usado de todos é o noturno e pertence ao elevador 1\n")
				}
				senao se (a_elevador2 > a_elevador1 e a_elevador2 > a_elevador3)
				{
					escreva ("O periodo mais usado de todos é o noturno e pertence ao elevador 2\n")
				}
				senao
				{
					escreva ("O periodo mais usado de todos é o noturno e pertence ao elevador 3\n")
				}		
			}
			
			p_periodo_media = periodo_total*(a_periodo_matutino/100)
			media_utilizacao = periodo_total*(a_periodo_vespertino/100)
			porc_periodo_n = periodo_total*(a_periodo_noturno/100)
			se (a_periodo_matutino > a_periodo_vespertino e a_periodo_vespertino > a_periodo_noturno)
			{
				dif_mais_pro_menos = p_periodo_media - porc_periodo_n
				escreva ("A diferança do mais usado para o menos usado é: "+dif_mais_pro_menos+"\n")
			}
			senao se (a_periodo_vespertino > a_periodo_matutino e a_periodo_matutino > a_periodo_noturno)
			{
				dif_mais_pro_menos = media_utilizacao - porc_periodo_n
				escreva ("A diferança do mais usado para o menos usado é: "+dif_mais_pro_menos+"\n")	
			}
			senao se (a_periodo_noturno > a_periodo_matutino e a_periodo_matutino > a_periodo_vespertino)
			{
				dif_mais_pro_menos = porc_periodo_n - media_utilizacao
				escreva ("A diferança do mais usado para o menos usado é: "+dif_mais_pro_menos+"\n")
			}
			senao 
			{
				dif_mais_pro_menos = porc_periodo_n - p_periodo_media
				escreva ("A diferança do mais usado para o menos usado é: "+dif_mais_pro_menos+"\n")
			}
			
			se (a_periodo_matutino > a_periodo_vespertino e a_periodo_vespertino > a_periodo_noturno)
			{
				escreva ("O porcentual do elevador de média utilização é: "+media_utilizacao+"\n")
			}
			senao se (a_periodo_vespertino > a_periodo_matutino e a_periodo_matutino > a_periodo_noturno)
			{
				escreva ("O porcentual do elevador de média utilização é: "+p_periodo_media+"\n")	
			}
			senao se (a_periodo_vespertino > a_periodo_noturno e a_periodo_noturno > a_periodo_matutino)
			{
				escreva ("O porcentual do elevador de média utilização é: "+porc_periodo_n+"\n")	
			}
			senao se (a_periodo_noturno > a_periodo_matutino e a_periodo_matutino > a_periodo_vespertino)
			{
				escreva ("O porcentual do elevador de média utilização é: "+p_periodo_media+"\n")
			}
			senao se (a_periodo_noturno > a_periodo_vespertino e a_periodo_vespertino > a_periodo_matutino)
			{
				escreva ("O porcentual do elevador de média utilização é: "+media_utilizacao+"\n")
			}
			senao 
			{
				escreva ("O porcentual do elevador de média utilização é: "+porc_periodo_n+"\n")
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 311; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */