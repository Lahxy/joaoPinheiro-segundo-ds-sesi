//EX2-Escreva um algoritmo usando a estrutura de repetição 'para' que calcule a média de N notas fornecidas pelo usuário e apresente o resultado.

programa {
  funcao inicio()
  {
    inteiro cont, n, total=0
    real media
    escreva ("diga quantas notas irá incerir: ")
    leia (cont)
    para (inteiro i=0; i<cont; i++)
    {
      escreva ("diga a ", i+1," nota: ")
      leia (n)
      total = total + n
      media = total/cont
    }
    escreva ("a media é: ", media,"\n\n")
  }
}
