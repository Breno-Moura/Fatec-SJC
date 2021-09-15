programa
{
	
	funcao inicio()
	{
		inteiro altura, c = 1, menoraltura = 0, maioraltura = 0
		inteiro cont_f = 0, total_alt_f = 0, media_alt_f = 0
		inteiro cont_m = 0, porcent_m = 100
		inteiro sexo
		
		para(c; c <= 50; c++){
			escreva("Digite sua altura: (em centímetros)\n")
			leia(altura)
			escreva("Selecione seu sexo: \nPara MASCULINO selecione 1 \ne para FEMININO selecione 0)\n")
			leia(sexo)
			
			se(menoraltura == 0){
				menoraltura = altura
			}
			se(altura <= menoraltura){
				menoraltura = altura
			}

			se(maioraltura == 0){
				maioraltura = altura
			}
			se(altura >= maioraltura){
				maioraltura = altura
			}

			se(sexo == 0){
				cont_f++
				total_alt_f = total_alt_f + altura
				media_alt_f = total_alt_f / cont_f
				porcent_m -= 2
			}
			se(sexo == 1){
				cont_m++
			}
		}
		escreva("Maior altura do grupo: ", maioraltura, " centímetros\n")
		escreva("Menor altura do grupo: ", menoraltura, " centímetros\n")
		escreva("Média de altura das mulheres: ", media_alt_f, " centímetros\n")
		escreva("Número de homens no grupo: ", cont_m, "\n")
		escreva("Porcentagem de homens no grupo: ", porcent_m, "%\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 197; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {cont_f, 7, 10, 6}-{cont_m, 8, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */