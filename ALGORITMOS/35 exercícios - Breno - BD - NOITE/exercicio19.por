programa
{
	
	funcao inicio()
	{
		real fahrenheit,celsius
		escreva("Celcius - Fahrenheit \n")
		
		para (fahrenheit = 50.0; fahrenheit <= 150.0; fahrenheit++)
		{
			celsius = (fahrenheit-32)*(5.0 / 9.0)
			escreva(celsius+" C° "+fahrenheit+" °F \n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 98; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */