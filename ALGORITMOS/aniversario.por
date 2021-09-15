programa
{
	inclua biblioteca Matematica
	funcao inicio()
	{
		inteiro dia,mes,ano
		inteiro diaA,mesA,anoA
		inteiro tmes, tano, total, totalg
		
		escreva ("Informe o dia atual: ")
		leia (diaA)
		escreva ("Informe o mês atual: ")
		leia(mesA)
		escreva ("Informe o ano atual: ")
		leia(anoA)

		escreva ("Informe o dia do seu aniversário: ")
		leia (dia)
		escreva ("Informe o mês do seu aniversário: ")
		leia(mes)
		escreva ("Informe o ano do seu aniversário: ")
		leia(ano)
		
		tano = (anoA-ano)*360 
		tmes = (mesA-mes)*30
		total = tano+tmes+(diaA-dia)
		tano = Matematica.arredondar(total/360, 0)
		total = total-(tano*360)
		tmes = Matematica.arredondar(total/30, 0)
		total = total-(tmes*30)
		escreva("Resultado: \n","Anos:\n",tano," Meses: \n",tmes," Dias: \n",total)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 781; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */