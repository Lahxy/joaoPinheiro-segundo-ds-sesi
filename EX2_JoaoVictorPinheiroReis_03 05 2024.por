/**Exercicio 2:

Faça um programa que leia 2 vetores com 5 números inteiros cada, calcule e mostre as posições que apresentem o mesmo valor nos dois vetores */

programa {
  funcao inicio() {
    inteiro pos, lista[5], lista2[5]
    para(inteiro i=0; i<5; i++)
    {
      pos=i+1
      escreva("DIGA O ",pos,"° NUMERO DA LISTA 1: ")
      leia (lista[i])
    }
    para(inteiro i=0; i<5; i++)
    {
      pos=i+1
      escreva("DIGA O ",pos,"° NUMERO DA LISTA 2: ")
      leia (lista2[i])
    }
    para(inteiro i=0; i<5; i++)
    {
      pos=i+1
      se (lista[i]==lista2[i])
      {
        escreva("SAO IGUAIS NAS POSICAO: ",pos,"\n")
      }
    }
  }
}
