programa
{
	funcao inicio()
	{
		real a, b, c, x1, x2, delta

		escreva ("Insira o valor de a: ")
		leia (a)

		escreva ("Insira o valor de b: ")
		leia (b)
		
		escreva ("Insira o valor de c: ")
		leia (c)
		
		delta = (b*b) - 4*a*c

		x1 = ((-b + (delta/delta))/(2*a))
		
		x2 = ((-b - (delta/delta))/(2*a))

		escreva ("Os valores são: "+x1+" e "+x2)
	}
}