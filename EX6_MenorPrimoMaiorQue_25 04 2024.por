//EX6-Descreva um algoritmo que use um loop "enquanto" para encontrar o menor nÃºmero primo maior que um nÃºmero fornecido 

programa
{
	funcao inicio()
	{
		inteiro n, cont, primo=0, res, parada
		escreva ("digite o número: ")
		leia (n)
		parada=n+2
		enquanto (primo==0)
		{
			para(inteiro i=n+1;i<parada;i++)
			{
				cont=0
				para(inteiro k=1; k<=i; k++)
				{
					se (i%k==0)
					{
						cont++
					}
				}
				se (cont==2)
				{
					primo++
					res=i
				}
				senao
				{
					parada++
				}
			}
		}
		escreva ("o menor número primo maior que ", n, " é: ",res)
	}
}
