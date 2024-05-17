/**EX2:
Escreva um algoritmo que leia os elementos de uma matriz 5x5 de inteiros. Ao final, o algoritmo deverá mostrar a soma de todos os elementos. */

programa {
  funcao inicio() {
    inteiro numeros[5][5], soma=0
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
        soma+=numeros[i][j]
      }
    }
    escreva("SOMA TOTAL: ",soma)
    }
  }
}
