programa
{
	funcao inicio()
	{
		real totalconsumo, capacidade, litros, km, conslitro, tanque, percorrer
		
		escreva("C�lculo de consumo\n")
		escreva("Informe a capacidade do tanque em litros do autom�vel: ")
		leia (capacidade)
		escreva("Informe a quantidade de litros que foram abastecidos: ")
		leia (litros)
		escreva("Informe quantos KM foram percorridos desde o �ltimo abastecimento: ")
		leia (km)

		conslitro = km/litros
		tanque = capacidade-litros
		percorrer = tanque/conslitro
		
		escreva ("O consumo do autom�vel foi: "+conslitro+" Km/L\n")
		escreva ("Sobrou: "+tanque+" litros no tanque\n")
		escreva ("A dist�ncia que ele ainda pode percorrer �: "+percorrer+" Km/L")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 550; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */