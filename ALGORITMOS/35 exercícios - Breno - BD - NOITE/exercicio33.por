programa
{
	
	funcao inicio()
	{
		inteiro cadastro
		inteiro msc_prematuro = 0, fem_prematuro = 0, total_prematuro = 0
		inteiro msc_nao_prematuro = 0, fem_nao_prematuro = 0, total_nao_prematuro = 0
		inteiro total_nascidos = 0
		inteiro total_dias = 0
		inteiro dias = 0, dia [1000000]
		inteiro x = 0
		inteiro num = 0
	
		escreva ("Deseja cadastrar nascimento de alguma criança? (Para SIM digite 1 / para NÂO digite 2) ")
		leia (cadastro)
		
		enquanto (cadastro == 1){
			inteiro sexo = 0
			inteiro prematuro = 0
					
			
			escreva ("Criança é prematura? (Para SIM digite 1 / para NÂO digite 2) ")
			leia (prematuro)
			se (prematuro == 1){

				escreva ("Qual o sexo da criança? (Para MASCULINO digite 1 / para FEMININO digite 2) ")
				leia (sexo)
				se (sexo == 1){
					msc_prematuro = msc_prematuro + 1
				}senao{
					fem_prematuro = fem_prematuro + 1
				}

				escreva ("Quantos dias ela ficou no incubadora? ")
				leia (dias)
				
				dia[x] = dias

				total_dias = total_dias + dias
				total_prematuro = total_prematuro + 1
				total_nascidos = total_nascidos + 1
			}
			
			senao{
				escreva ("Qual o sexo da criança? (Para MASCULINO digite 1 / para FEMININO digite 2) ")
				leia (sexo)
				se (sexo == 1){
					msc_nao_prematuro = msc_nao_prematuro + 1
				}senao{
					fem_nao_prematuro = fem_nao_prematuro + 1
				}
				total_nao_prematuro = total_nao_prematuro + 1
				total_nascidos = total_nascidos + 1	
			}
			
			x = x + 1 
			escreva ("Deseja cadastrar nascimento de outra criança? (Para SIM digite 1 / para NÂO digite 2) ")
			leia (cadastro)
		}

		para (inteiro i = 0; i <= x; i++){
			se(dia[i] > num){
				num = dia[i]
			}
		}
		
		escreva ("Porcentagem recém-nascidos prematuros:", 100 / total_nascidos * total_prematuro,"% \n")
		escreva ("Porcentagem recém-nascidos prematuros MENINOS:", 100 / total_prematuro * msc_prematuro ,"% \n")
		escreva ("Porcentagem recém-nascidos prematuros MENINAS:", 100 / total_prematuro * fem_prematuro ,"% \n")
		escreva ("Média de Dias de permanência dos recém-nascidos prematuros na incubadora:", total_dias / total_prematuro ,"\n")
		escreva ("Maior número de dias que um recém-nascido prematuro permaneceu na incubadora:",num,"dias \n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 51; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */