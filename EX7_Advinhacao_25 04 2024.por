//EX7-Crie um algoritmo para um jogo de adivinha��o em que o jogador tenta adivinhar um n�mero secreto. Use um loop 'fa�a enquanto' para permitir que o jogador continue adivinhando at� que acerte o n�mero secreto. O jogo deve fornecer feedback ao jogador sobre se a tentativa foi muito alta, muito baixa ou correta.

programa {
  funcao inicio()
  {
    inteiro n, tent
    n=100
    faca
    {
        escreva ("ADVINHA��O, digite a tentativa: ")
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
          escreva ("PARAB�N, ACERTOU")
        }
    }
    enquanto(tent!=n)
  }
}
