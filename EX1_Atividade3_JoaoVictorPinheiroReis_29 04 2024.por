/**Exerc�cio 1 - Numeros Inteiros e Soma 

Escreva um algoritmo que leia dez valores num�ricos inteiros e apresente na tela o somat�rio dos valores.  */

programa {
  funcao inicio() {
    inteiro n, t=0
    para (inteiro i=0; i<10; i++)
    {
      escreva ("diga um valor: ")
      leia(n)
      t+=n
    }
    escreva("a soma de todos e: ", t)
  }
}
