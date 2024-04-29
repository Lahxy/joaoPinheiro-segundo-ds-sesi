/**Exercício 3 - Tabuada Divisao 

Crie um algoritmo que leia um determinado número e apresente na tela a tabuada da divisão deste número. Por exemplo, digamos que o número informado foi 5, o programa deverá apresentar na tela: 

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
