programa {
  funcao inicio()
  {
    real eu, n1, n2, n3, p1, p2, p3, al
    cadeia end
    escreva("QUANTOS ALUNOS IRÁ CADASTRAR: ")
    leia(al)
    real mt1[al]
    real mt2[al]
    real mt3[al]
    real medias[al]
    faca
    {
      escreva("VOCE DESEJA 1-CALCULAR MEDIAS, 2-INSERIR MEDIAS, 3-EXIBIR NOTAS, 4-MUDAR NOTA DE ALUNO: ")
      leia(eu)
      escolha (eu)
      {
        caso 1:
          escreva("MEDIA 1-ARITMETICA OU 2-PONDERADA: ")
          leia(eu)
          se(eu==1)
          {
            p1=1
            p2=1
            p3=1
          }
          se(eu==2)
          {
            escreva("DIGA O PESO DE MT1: ")
            leia(p1)
            escreva("DIGA O PESO DE MT2: ")
            leia(p2)
            escreva("DIGA O PESO DE MT3: ")
            leia(p3)
          }
          para(inteiro i=0; i<al; i++)
          {
            escreva("DIGA A ",i+1,"° NOTA EM MT1: ")
            leia(mt1[i])
          }
          para(inteiro i=0; i<al; i++)
          {
            escreva("DIGA A ",i+1,"° NOTA EM MT2: ")
            leia(mt2[i])
          }
          para(inteiro i=0; i<al; i++)
          {
            escreva("DIGA A ",i+1,"° NOTA EM MT3: ")
            leia(mt3[i])
          }
          para(inteiro i=0; i<al; i++)
          {
            medias[i]=(mt1[i]+mt2[i]+mt3[i])/(p1+p2+p3)
          }
        pare
        caso 2:
          para(inteiro i=0; i>al; i++)
          {
            escreva("DIGA A MEDIA FINAL DO ",i+1,"° ALUNO: ")
            leia(media[i])
          }
        pare
        caso 3:
          escreva("MT1: ",mt1,"\nMT2: ",mt2,"\nMT3: ",mt3)
        pare
        caso 4:

        pare
      }
      escreva("\nVOCE QUER CONTINUAR? s OU n: ")
      leia(end)
      limpa()
    }enquanto(end=="s")
  }
}
