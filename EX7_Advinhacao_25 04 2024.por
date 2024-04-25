//EX7-Crie um algoritmo para um jogo de adivinhação em que o jogador tenta adivinhar um número secreto. Use um loop 'faça enquanto' para permitir que o jogador continue adivinhando até que acerte o número secreto. O jogo deve fornecer feedback ao jogador sobre se a tentativa foi muito alta, muito baixa ou correta.

programa {
  funcao inicio()
  {
    inteiro n, tent
    n=100
    faca
    {
        escreva ("ADVINHAÇÃO, digite a tentativa: ")
        leia (tent)
        se (tent<n)
        {
          escreva ("muito baixo\n\n")
        }
        se (tent>n)
        {
          escreva ("muito alto\n\n")
        }
        se (tent==n)
        {
          escreva ("PARABÉN, ACERTOU")
        }
    }
    enquanto(tent!=n)
  }
}
