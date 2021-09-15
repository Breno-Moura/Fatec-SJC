programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		inteiro  sexo = 0, cabelo = 0, olhos = 0, idade = 0, maior_idade = 0
		real c_homem = 0.0, c_mulher = 0.0
		real cor_olho_verde = 0.0, cor_olho_castanho = 0.0, cor_olho_azul = 0.0
		real cor_cabelo_castanho = 0.0, cor_cabelo_loiro = 0.0, cor_cabelo_preto = 0.0
		real af = 0.0, afm = 0.0
		
		
		enquanto(idade >= -1)
		{
				escreva ("Informe sua idade: ")
				leia (idade)
				se (idade == -1)
					{
					pare 
					}
				se (idade > maior_idade)
					{
					maior_idade = idade
					}
				escreva ("Informe seu sexo: \n1- Homem \n2- Mulher\n")
				leia (sexo)
				escolha (sexo)
					{
					caso 1: sexo = 1
					c_homem = c_homem + 1
					pare
					caso 2: sexo = 2
					c_mulher = c_mulher + 1
					pare
					}
				escreva ("Informe a cor dos seus olhos: \n1-Castanho \n2-Verde \n3-Azul\n")
				leia (olhos)
				escolha (olhos)
					{
					caso 1: olhos = 1
					cor_olho_castanho = cor_olho_castanho + 1
					pare
					caso 2: olhos = 2
					cor_olho_verde = cor_olho_verde + 1
					pare
					caso 3: olhos = 3
					cor_olho_azul = cor_olho_azul + 1
					pare
					}
				escreva ("Informe a cor do seu cabelo: \n1-Castanho \n2-Loiro \n3-Preto\n")
				leia (cabelo)
				escolha (cabelo)
					{
					caso 1: cabelo = 1
					cor_cabelo_castanho = cor_cabelo_castanho + 1
					pare
					caso 2: cabelo = 2
					cor_cabelo_loiro = cor_cabelo_loiro + 1
					pare
					caso 3: olhos = 3
					cor_cabelo_preto = cor_cabelo_preto + 1
					pare
					}
				
				se (sexo >= 1 e sexo < 2 e idade >= 18 e idade <= 35){
					afm = afm + 1
					}
				se (sexo == 2 e olhos == 2 e cabelo == 2 e idade >= 18 e idade <= 35){
					af = af + 1
					}
				
				
			
		} 
		af = c_mulher*af
		afm = c_homem*afm
		escreva ("A maior idade entre os habitante é "+maior_idade+" anos.\n")

		escreva ("A porcentagem de homens entre 18 e 35 anos é:"+afm+"%\n")

		escreva ("A porcentagem de mulheres entre 18 e 35 anos com cabelos loiros e olhos verdes é:"+af+"%\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 360; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */