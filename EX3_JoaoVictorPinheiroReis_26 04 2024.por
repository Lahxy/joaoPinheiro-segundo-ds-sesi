/**Ex3:
O valor unit�rio de um livro na promo��o custa R$ 12,00, caso o cliente comprar at� dez
livros. Caso contr�rio, o pre�o unit�rio do livro custa R$ 8,00. Escreva um algoritmo que
leia o n�mero de livros comprados, calcule e mostre o valor total que o cliente dever�
pagar.
 */

programa {
  funcao inicio()
  {
    inteiro n
    escreva("diga quantos livros comprar�: ")
    leia(n)
    se (n<=10)
    {
      escreva ("o valor a se pagar � de ",n*12," reais")
    }
    senao
    {
      escreva("o valor a se pagar � de ", n*8," reais")
    }
  }
}
