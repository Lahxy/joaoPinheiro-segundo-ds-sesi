/**Exercicio 4:

Fa�a um programa que leia um vetor com 5 n�meros inteiros e mostre a saida a seguir: 

Ex: Os n�meros digitados foram: 5 + 3 + 2 + 0 + 2 = 12 */

programa {
  funcao inicio() {
    inteiro n=0, lista[5]
    para (inteiro i=0; i<5; i++)
    {
      escreva("DIGA O ",i+1,"� NUMERO: ")
      leia(lista[i])
      n+=lista[i]
    }
    para (inteiro i=0; i<4; i++)
    {
      escreva(lista[i]," + ")
    }
    escreva(lista[4]," = ", n)
  }
}
