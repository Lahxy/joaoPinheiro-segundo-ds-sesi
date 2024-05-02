/**EX3-Em um sistema de menu interativo, como criar uma opcao que permita ao usuario escolher entre diferentes funcionalidades (como calcular, listar, atualizar, sair, etc.) com base em sua selecao? Implemente isso usando uma estrutura escolha caso */

programa {
  funcao inicio() {
    inteiro eu, eu2, euLista, end=1, A, B
	caracter op
	escreva ("quantos numeros tera no máximo em suas listas: ")
	leia(euLista)
	real lista[euLista] 
	enquanto (end==1)
	{
	    escreva("\n1-calcular\n2-listar\n3-atualizar\n4-sair\n")
	    leia(eu)
		limpa()
	    escolha(eu)
	    {
		caso 1:
			limpa()
			escreva("diga o valor de A: ")
			leia(A)
			escreva("diga o valoe de B: ")
			leia(B)
			escreva("+, -, *, /: ")
			leia(op)
			escolha (op)
			{
				caso '+':
					escreva("Resultado = ", A+B)
				pare
				caso '-':
					escreva("Resultado = ", A-B)
				pare
				caso '*':
					escreva("Resultado = ", A*B)
				pare
				caso '/':
					escreva("Resultado = ", A/B)
				pare
				
			}
		pare
		caso 2:
			limpa()
			escreva("1-para criar uma nova lista\n2-para ver a atual\n")
			leia(eu)
			se (eu==1)
			{
				para (inteiro i=0; i<euLista; i++)
				{
					escreva("diga o ",i+1,"° numero: ")
					leia(lista[i])
				}
				escreva("a lista ficou como: ",lista)
			}
			se (eu==2)
			{
				escreva("\na lista atual e: ",lista,"\n")
			}
		pare
	    caso 3:
			limpa()
			escreva("a lista atual é: ", lista,"\n")
			escreva("posicao do numero quer atualizar na lista: ")
			leia(eu)
			escreva("valor a ser colocado no lugar de ",lista[eu-1],": ")
			leia(eu2)
			lista[eu-1]=eu2
		pare
	    caso 4:
			limpa()
			end=0
		pare
		caso contrario:
			limpa()
			escreva("\nINVALIDO\n")
	    pare
	  }
	}
  }
}