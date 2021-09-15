programa
{
	
	funcao inicio()
	{
		escreva("Números Primos\n\n")
		
		inteiro primeiro, ultimo, f, resultado
		logico op
		
		escreva("Digite o primeiro número primo:\n")
		leia(primeiro)
		escreva("Digite o último número primo:\n")
		leia(ultimo)

		para(primeiro; primeiro <= ultimo; primeiro++){
			f = 2
			op = falso
			enquanto(primeiro != f){
				resultado = primeiro % f
				f++
				se(resultado == 0){
					op = verdadeiro
				}
			}
			se(nao op){
				escreva(primeiro, " ")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 166; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */