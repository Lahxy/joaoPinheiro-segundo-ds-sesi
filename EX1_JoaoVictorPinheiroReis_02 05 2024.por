/**EX1-Em um sistema de vendas online, como implementar um processo que permita ao usuario adicionar produtos ao carrinho de compras e continuar adicionando enquanto desejar? O sistema deve utilizar uma estrutura faca enquanto para essa funcionalidade. */

programa {
  funcao inicio() {
    inteiro n = 1, end, i = 0
    cadeia lista="", x, soun
    faca
    {
      escreva("DIGA O NOME DO PRODUTO E SEU VALOR E SEGUIDA: ")
      leia(x)
      x=x+", "
      lista=lista+x
      escreva("MAIS? s OU n: ")
      leia(soun)
      se (soun=="s")
      {
        end = 1
      }
      senao
      {
        end=0
      }
    }
    enquanto(end == 1)
    escreva("A LISTA FICOU COMO: ", lista)
  }
}
