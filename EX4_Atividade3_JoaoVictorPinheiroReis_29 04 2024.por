/**Exerc�cio 4 - Tabela com Cabecalho 

Escrever um algoritmo que l� um valor num�rico inteiro. Ap�s, escreva uma tabela com cabe�alho, contendo o valor, seu quadrado e seu cubo. Mostrar para todos valores entre o valor informado e 1. Por exemplo, digamos que o n�mero informado seja 20, deve-se apresentar na tela: 

N�mero  Dobro  Triplo 

 20      400    8000 

19     361    6859 

18     324    5832  */

programa {
  funcao inicio() {
    inteiro n
    escreva("diga o numero: ")
    leia(n)
    escreva ("Numero Quadrado Cubo\n")
    para (inteiro i=1; i<(n+1); i++)
    {
      escreva ("   ",i,"       ",(i*i),"     ", (i*i*i),"\n")
    }
  }
}
