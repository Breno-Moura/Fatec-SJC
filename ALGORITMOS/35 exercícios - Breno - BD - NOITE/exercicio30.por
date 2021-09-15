programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		caracter cpf
		real  imposto_renda, salario = 998.00, renda, nmr_dp, desconto_dp = 0
		
		para (inteiro i=0;i<11;i++)
		{
		
		escreva ("\nEntre com o seu CPF: ")
		leia (cpf)

		escreva ("Entre com o número de dependentes: ")
		leia (nmr_dp)

		escreva ("Entre com sua renda em salarios minimos: ")
		leia (renda)

		desconto_dp = nmr_dp * 5
		

		 se ( renda < 2){
		 	escreva("Isento de Alíquota")
			}
		 senao se(renda >= 2 e renda <= 3){
			imposto_renda = salario * renda
			imposto_renda = imposto_renda - ( imposto_renda * (desconto_dp / 100))
			imposto_renda = imposto_renda - (imposto_renda * 5) / 100
			imposto_renda = salario* renda - imposto_renda
			escreva("O valor do imposto de renda a ser pago é: "+ mat.arredondar(imposto_renda, 3))			
			}	
		 senao se(renda > 3 e renda <= 5){
		 	imposto_renda = salario * renda
			imposto_renda = imposto_renda - ( imposto_renda * (desconto_dp / 100))
			imposto_renda = imposto_renda - (imposto_renda * 10) / 100
			imposto_renda = salario* renda - imposto_renda
			escreva("O valor do imposto de renda a ser pago é: "+ mat.arredondar(imposto_renda, 3))	
		 	}
		senao se(renda > 5 e renda <= 7){
		 	imposto_renda = salario * renda
			imposto_renda = imposto_renda - ( imposto_renda * (desconto_dp / 100))
			imposto_renda = imposto_renda - (imposto_renda * 15) / 100
			imposto_renda = salario* renda - imposto_renda
			escreva("O valor do imposto de renda a ser pago é: "+ mat.arredondar(imposto_renda, 3))	
		 	}
		senao {
		 	imposto_renda = salario * renda
			imposto_renda = imposto_renda - ( imposto_renda * (desconto_dp / 100))
			imposto_renda = imposto_renda - (imposto_renda * 20) / 100
			imposto_renda = salario* renda - imposto_renda
			escreva("O valor do imposto de renda é: "+ mat.arredondar(imposto_renda, 3))	
		 	}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 471; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */