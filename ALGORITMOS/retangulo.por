programa
{
	
	funcao inicio()
	{
		escreva("Perímetro e Área do Retângulo \n")
		real L1, L2, A, P
		escreva("Entre com o primeiro lado do retângulo: \n")
		leia(L1)
		escreva("Entre com o segundo lado do retângulo: \n")
		leia(L2)

		A = L1 * L2
		P = (2 * L1) + (2 * L2)

		escreva("A área do retângulo é: ", A, "\n E o perímetro é: ", P)
	}
}