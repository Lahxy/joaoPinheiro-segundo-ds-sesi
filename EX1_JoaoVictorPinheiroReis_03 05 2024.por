/**Exercicio 1:

Fa�a um programa que peencha um vetor com 5 n�meros inteiros, calcule e mostre os n�meros pares e suas respectivas posi��es */

programa {
  funcao inicio() {
    inteiro n, pos
    cadeia lista[5]
    para(inteiro i=0; i<5; i++)
    {
      pos=i+1
      escreva("DIGA O ",pos,"� NUMERO: ")
      leia (lista[i])
    }
    para(inteiro i=0; i<5; i++)
    {
      se (lista[i]%2==0)
      {
        escreva(lista[i]," (Pos: ",i+1,"�)\n")
      }
    }
  }
}
