/**Ex3:
O valor unitário de um livro na promoção custa R$ 12,00, caso o cliente comprar até dez
livros. Caso contrário, o preço unitário do livro custa R$ 8,00. Escreva um algoritmo que
leia o número de livros comprados, calcule e mostre o valor total que o cliente deverá
pagar.
 */

programa {
  funcao inicio()
  {
    inteiro n
    escreva("diga quantos livros comprará: ")
    leia(n)
    se (n<=10)
    {
      escreva ("o valor a se pagar é de ",n*12," reais")
    }
    senao
    {
      escreva("o valor a se pagar é de ", n*8," reais")
    }
  }
}
