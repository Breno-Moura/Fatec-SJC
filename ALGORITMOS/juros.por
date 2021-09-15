programa
{
	
	funcao inicio()
	{
		real c, i, n, r

		escreva ("digite o capital: ")
		leia (c)

		escreva ("insira a taxa de empréstimo: ")
		leia (i)

		escreva ("insira o período: ")
		leia (n)

          r = c + (c*i)/100

          r = r*n

          escreva ("O total a pagar é: "+r)
	}
}