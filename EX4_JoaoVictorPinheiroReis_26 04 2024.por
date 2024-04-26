/**Ex4:
Escreva um algoritmo que leia um valor para a variável A e um valor para a variável B. Logo
após, o algoritmo deverá fazer com que a variável A guarde o valor da variável B e a variável
B guarde o valor da variável A. Apresentar os valores das variáveis A e B antes e depois da
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
