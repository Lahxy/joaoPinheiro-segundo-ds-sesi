//EX5-Escreva um algoritmo que use um loop "para" para encontrar o maior n�mero em uma lista de n�meros fornecidos pelo usu�rio.

programa {
  funcao inicio()
  {
    inteiro cont, n, n2=0
    escreva ("quantos n�meros ser�o: ")
    leia (cont)
    para (inteiro i=0; i<cont; i++)
    {
      escreva("diga o ",i+1," n�mero: ")
      leia(n)
      se (n>n2)
      {
        n2=n
      }
    }
    escreva("\no maior foi: ", n2)
  }
}
