/**Exerc�cio 3 - Tabuada Divisao 

Crie um algoritmo que leia um determinado n�mero e apresente na tela a tabuada da divis�o deste n�mero. Por exemplo, digamos que o n�mero informado foi 5, o programa dever� apresentar na tela: 

5 / 5 = 1 

10 / 5 = 2 

15 / 5 = 3 

? 

50 / 5 = 10  */

programa {
  funcao inicio() {
    inteiro n
    escreva ("diga o numero: ")
    leia(n)
    para (inteiro i=1; i<11; i++)
    {
      escreva(n," / ",i," = ",n/i,"\n")
    }
  }
}
