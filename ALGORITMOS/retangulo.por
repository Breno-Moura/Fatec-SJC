programa
{
	
	funcao inicio()
	{
		escreva("Per�metro e �rea do Ret�ngulo \n")
		real L1, L2, A, P
		escreva("Entre com o primeiro lado do ret�ngulo: \n")
		leia(L1)
		escreva("Entre com o segundo lado do ret�ngulo: \n")
		leia(L2)

		A = L1 * L2
		P = (2 * L1) + (2 * L2)

		escreva("A �rea do ret�ngulo �: ", A, "\n E o per�metro �: ", P)
	}
}