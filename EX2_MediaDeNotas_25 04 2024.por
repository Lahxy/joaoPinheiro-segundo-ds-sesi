programa {
  funcao inicio()
  {
    inteiro cont, n, total=0
    real media
    escreva ("diga quantas notas ir� incerir: ")
    leia (cont)
    para (inteiro i=0; i<cont; i++)
    {
      escreva ("diga a ", i+1," nota: ")
      leia (n)
      total = total + n
      media = total/cont
    }
    escreva ("a media �: ", media,"\n\n")
  }
}
