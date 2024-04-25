programa
{
	
	funcao inicio()
	{
		inteiro id1, id2 = 0, i
		para (i = 1; i<=10 ; i++)
		{
			escreva ("diga a "+i+"° idade: ")
			leia(id1)
			se (id1 > id2)
			{
				id2 = id1
			}
		}
		escreva ("o maior numero é "+id2)
	}
}