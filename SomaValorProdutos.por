programa
{
	
	funcao inicio()
	{
		real v1, v2 = 0.0
		para (inteiro i=1; i<=8; i++)
		{
			escreva ("digite o valor do "+i+"° produto: ")
			leia(v1)
			v2 = v1+v2
		}
		escreva ("\na soma é igual a: "+v2)
	}
}