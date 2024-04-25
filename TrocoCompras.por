programa
{
	funcao inicio()
	{
		real vCompra, preco, troco, a, b
		inteiro cartOuDin
		cadeia end = "sim"
		faca
		{
			escreva ("SERÁ PAGO COM 1-CARTÃO OU 2-DINHEIRO: ")
			leia (cartOuDin)
			se (cartOuDin == 2)
			{
				faca
				{
					escreva ("PREÇO DA COMPRA (> 0): ")
					leia (preco)
					limpa()
				}
				enquanto (preco <= 0)
				faca
				{
					escreva ("VALOR PAGO (> 0): ")
					leia (vCompra)
					limpa ()
				}
				enquanto (vCompra <= 0)
				troco = vCompra - preco
				se (troco < 0)
				{
					escreva ("O CLIENTE PRECISA PAGAR MAIS "+troco*-1+"\n")
				}
				senao
				{
					escreva ("SÃO "+troco+" DE TROCO\n")
				}
				escreva ("VOCÊ QUER CONTINUAR? DIGA sim OU não: ")
				leia (end)
				limpa()
			}
			senao se (cartOuDin == 1)
			{
				escreva ("NÃO TEM TROCO NO CARTÃO\n")
			}
			senao
			{
				escreva ("A OPÇÃO NÃO É VÁLIDA\n")
			}
		}
		enquanto (end == "sim")
	}
}