/**Ex4:
Escreva um algoritmo que leia um valor para a vari�vel A e um valor para a vari�vel B. Logo
ap�s, o algoritmo dever� fazer com que a vari�vel A guarde o valor da vari�vel B e a vari�vel
B guarde o valor da vari�vel A. Apresentar os valores das vari�veis A e B antes e depois da
troca. */

programa {
  funcao inicio()
  {
    real A, B, c
    escreva("digite o valor de A: ")
    leia(A)
    escreva("digite um valor para B: ")
    leia(B)
    escreva("antes da troca: A=",A, " B=",B)
    c=B
    B=A
    A=c
    escreva("\ndepois da troca: A=",A," B=",B)
  }
}
