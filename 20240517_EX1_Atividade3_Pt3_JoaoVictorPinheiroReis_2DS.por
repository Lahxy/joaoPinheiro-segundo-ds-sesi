/**EX1:
Ler uma matriz 5X5 e gerar outra em que cada elemento é o cubo do elemento respectivo na matriz original. Imprima depois esta nova matriz. */

programa {
  inclua biblioteca Matematica-->m
  funcao inicio() {
    inteiro numeros[5][5], cubos[5][5]
    para(inteiro i=0; i<5; i++)
    {
      para(inteiro j=0; j<5; j++)
      {
        escreva("DIGA O NUMERO ",j+1," DA LINHA ",i+1,": ")
        leia(numeros[i][j])
      }
    }
    para(inteiro i=0; i<5;i++)
    {
      para(inteiro j=0; j<5; j++)
      {
        cubos[i][j]=m.potencia(numeros[i][j],3)
      }
    }
    para(inteiro i=0; i<5;i++)
    {
      para(inteiro j=0; j<5; j++)
      {
        escreva(cubos[i][j],"\t")
      }
      escreva("\n")
    }
  }
}
