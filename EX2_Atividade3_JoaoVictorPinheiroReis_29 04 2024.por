/**Exerc�cio 2 - Tabuada Multiplicacao 

Elabore um algoritmo que leia um determinado n�mero e apresente na tela a tabuada de multiplica��o deste n�mero. Por exemplo, digamos que o n�mero informado foi 2, o programa dever� apresentar na tela: 

1 x 2 = 2 

2 x 2 = 4 

3 x 2 = 6 

? 

10 x 2 = 20  */

programa {
  funcao inicio() {
    inteiro n
    escreva("diga o numero: ")
    leia(n)
    para (inteiro i=1; i<11; i++)
    {
      escreva(n," x ",i," = ",n*i,"\n")
    }
  }
}
