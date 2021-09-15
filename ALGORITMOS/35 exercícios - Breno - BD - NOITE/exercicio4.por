programa
{
	funcao inicio()
	{
		real totalconsumo, capacidade, litros, km, conslitro, tanque, percorrer
		
		escreva("Cálculo de consumo\n")
		escreva("Informe a capacidade do tanque em litros do automóvel: ")
		leia (capacidade)
		escreva("Informe a quantidade de litros que foram abastecidos: ")
		leia (litros)
		escreva("Informe quantos KM foram percorridos desde o último abastecimento: ")
		leia (km)

		conslitro = km/litros
		tanque = capacidade-litros
		percorrer = tanque/conslitro
		
		escreva ("O consumo do automóvel foi: "+conslitro+" Km/L\n")
		escreva ("Sobrou: "+tanque+" litros no tanque\n")
		escreva ("A distância que ele ainda pode percorrer é: "+percorrer+" Km/L")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 550; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */