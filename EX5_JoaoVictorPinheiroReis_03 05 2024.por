/**Exercício 5

Escreva um algoritmo que leia 50 valores e encontre o maior e o menor deles. Mostre o resultado.  */

programa {
  funcao inicio() {
    inteiro me=999*999, ma=-999*999,n
    para(inteiro i=1; i<=50; i++)
    {
      escreva("DIGA O ",i,"° NUMERO: ")
      leia(n)
      se(n>ma){ma=n}
      se(n<me){me=n}
    }
    escreva("O MAIOR NUMERO INSERIDO FOI ",ma," EQUANTO O MENOR FOI ", me)
  }
}
