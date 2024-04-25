//EX5-Escreva um algoritmo que use um loop "para" para encontrar o maior número em uma lista de números fornecidos pelo usuário.

programa {
  funcao inicio()
  {
    inteiro cont, n, n2=0
    escreva ("quantos números serão: ")
    leia (cont)
    para (inteiro i=0; i<cont; i++)
    {
      escreva("diga o ",i+1," número: ")
      leia(n)
      se (n>n2)
      {
        n2=n
      }
    }
    escreva("\no maior foi: ", n2)
  }
}
