programa
{
	funcao inicio()
	{
		cadeia nome,op
		inteiro a,b,c
		
		
		escreva ("Digite seu nome:\n")
		leia(nome)
		escreva ("Deseja somar? (s/n)\n")
		leia(op)
		escreva (op)
		se (op=="s" ou op=="n"){	
			se (op=="s"){
				escreva ("\nDigite um valor para somar\n")
				leia (a)
				escreva ("\nDigite outro valor para somar\n")
				leia (b)
				c=a+b
				escreva (nome+" o resultado é: "+c)
			}
			senao
			{
				escreva ("\nFinalizando...")
				}
				
		}
		senao
		{
			escreva("\n*ERRO* Utilize s ou n\n")
			retorne
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 525; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */