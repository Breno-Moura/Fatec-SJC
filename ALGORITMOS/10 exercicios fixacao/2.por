programa
{
	
	funcao inicio()
	{
		cadeia senha, user
		
		escreva("Usuario:\n")
		leia(user)
		escreva("Senha:\n")
		leia(senha)
		enquanto(senha==user){
			escreva("A senha não pode ser igual ao usuário! - Reentre\nSenha: ")
			leia(senha)
			}
		
		escreva("Cadastro efetuado com sucesso!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 247; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */