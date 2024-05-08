programa {
  funcao inicio()
  {
    real mudar, p1, p2, p3
	inteiro eu, alMudanca, mediaEscolhida, al, end=1
	escreva("QUANTOS ALUNOS IRA CADASTRAR: ")
	leia(al)
	real mt1[al]
	real mt2[al]
	real mt3[al]
	real medias[al] 
	faca
	{
		escreva("\nVOCE DESEJA\n1-INSERIR NOTAS\n2-LISTAR NOTAS E MEDIAS\n3-CALCULAR/EXIBIR NOTAS\n4-MUDAR NOTA DE ALUNO\n5-ENCERRAR: \n")
		leia(eu)
		escolha (eu)
		{
		caso 1:
			limpa()
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
          
        pare
        caso 2:
			limpa()
			escreva("\nALUNOS\t NOTAS\n")
			para(inteiro i=0;i<al;i++)
			{
				escreva("ALUNO ",i+1,"\t MT1: ",mt1[i],"  MT2: ",mt2[i], "  MT3: ",mt3[i], "  MEDIA: ",medias[i],"\n")
			}
        pare
        caso 3:
			limpa()
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
				medias[i]=((mt1[i]*p1)+(mt2[i]*p2)+(mt3[i]*p3))/(p1+p2+p3)
			}
			escreva("\nALUNOS\t NOTAS\n")
			para(inteiro i=0;i<al;i++)
			{
				escreva("ALUNO ",i+1,"\t MT1: ",mt1[i],"  MT2: ",mt2[i], "  MT3: ",mt3[i], "  MEDIA: ",medias[i],"\n")
			}
        pare
        caso 4:
			limpa()
			escreva("VOCE QUER MUDAR A NOTA DE QUAL ALUNO? DE 1 A ",al,": ")
			leia(alMudanca)
			alMudanca-=1
			escreva("EM QUAL MATERIA ESSA NOTA DEVERA SER MUDADA? 1-MT1, 2-MT2 OU 3-MT3: ")
			leia(eu)
			escolha(eu)
			{
				caso 1:
				escreva("QUAL A NOVA NOTA A SER POSTA NO LUGAR DE ", mt1[alMudanca], ": ")
				leia(mt1[alMudanca])
				pare
				caso 2:
				escreva("QUAL A NOVA NOTA A SER POSTA NO LUGAR DE ", mt2[alMudanca], ": ")
				leia(mt2[alMudanca])
				pare
				caso 3:
				escreva("QUAL A NOVA NOTA A SER POSTA NO LUGAR DE ", mt3[alMudanca], ": ")
				leia(mt3[alMudanca])
				pare
			}
		pare
		caso 5:
			end=0
        pare
		}
    }enquanto(end==1)
  }
}