programa
{
	funcao inicio()
	{
		cadeia end = "sim"
		inteiro ncadastros, opcMenu, i, excluida
		cadeia cadastro
		escreva ("quantas pizzarias serão cadastradas?\n")
		leia(ncadastros)
		limpa()
		cadeia pizzarias [ncadastros]
		enquanto (end == "sim")
		{
			escreva ("Digite:\n\n1-para ver a lista de pizzarias\n2-para adicionar/mudar as pizzarias\n3-para remover uma pizzaria\n4-para finalizar\n\n")
			leia(opcMenu)
			limpa()
			se (opcMenu==1) ou (opcMenu==2) ou (opcMenu==3) ou (opcMenu==4)
			{
				se (opcMenu==1)
				{
					escreva ("a lista é: " + pizzarias + "\n")
				}
				senao se (opcMenu==2)
				{
					para (i=0 ; i<ncadastros ; i++)
					{
						escreva ("diga o nome da pizzaria número "+i+": \n")
						leia(cadastro)
						pizzarias [i] = cadastro
					}
				}
				senao se (opcMenu==3)
				{
					escreva ("diga qual das pizzarias "+pizzarias+" você quer excluir, pela posição começando pelo 0: \n")
					leia (excluida)
					pizzarias [excluida] = ""
					escreva ("ficou:  " + pizzarias + "\n")
				}
			}
			senao
			{
				escreva ("opção inválida\n")
			}
			escreva ("você quer continuar?\n")
			leia (end)
			limpa()
		}
	}
}