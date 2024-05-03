/**Exercicio 1:

Faça um programa que peencha um vetor com 5 números inteiros, calcule e mostre os números pares e suas respectivas posições */

programa {
  funcao inicio() {
    inteiro n, pos
    cadeia lista[5]
    para(inteiro i=0; i<5; i++)
    {
      pos=i+1
      escreva("DIGA O ",pos,"° NUMERO: ")
      leia (lista[i])
    }
    para(inteiro i=0; i<5; i++)
    {
      se (lista[i]%2==0)
      {
        escreva(lista[i]," (Pos: ",i+1,"°)\n")
      }
    }
  }
}
