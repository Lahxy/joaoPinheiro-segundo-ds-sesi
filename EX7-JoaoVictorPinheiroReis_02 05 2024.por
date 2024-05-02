/*EX7-Em um aplicativo de compras online, como permitir que o usuário escolha entre diferentes opções de entrega (normal, expressa, retirada na loja) com base em critérios como localização e urgência? Utilize a estrutura se para oferecer as opções disponíveis.+*/

programa
{
	funcao inicio ()
	{
		inteiro km, urg
		cadeia op1="Normal", op2="Expresso", op3="Recolher na Loja"
		escreva("COMO VOCE AVALIARIA A DISTANCIA ENTRE VOCE E A LOJA MAIS PROXIMA, DE 1 A 3: ")
		leia(km)
		escreva("DE 1 A 3, DIGA O NIVEL DE URGENCIA: ")
		leia(urg)
		se (km==1 e urg==3 ou km==1 e urg==2)
		{
			escreva("RECOMENDA-SE: ", op3)
		}
		se (km==1 e urg==1 )
		{
			escreva("RECOMENDA-SE: 1-", op1," ou 2-",op3)
		}
		se (km==2 e urg==3 ou km==2 e urg==2)
		{
			escreva("RECOMENDA-SE: 1-", op2," ou 2-",op3)
		}
		se(km==2 e urg==1)
		{
			escreva("RECOMENDA-SE: 1-", op1)
		}
		se(km==3 e urg==3 ou km==3 e	urg==2)
		{
			escreva("RECOMENDA-SE: 1-",op2)
		}
		se (km==3 e urg==1)
		{
			escreva("RECOMENDA-SE: 1-", op1)
		}
	}
}