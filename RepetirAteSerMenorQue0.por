programa
{
	
	funcao inicio()
	{
		inteiro N, cont, i
		cont = 1
		para (i=0; i<cont; i++)
		{
			escreva ("digite um número: ")
			leia(N)
			se (N>0)
			{
				cont++
			}
		}
		escreva ("o programa parou, você digitou "+cont+" números")
	}
}