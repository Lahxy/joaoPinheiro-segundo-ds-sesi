programa {
  funcao inicio()
  {
    real mudar, p1, p2, p3
	cadeia inseridasJa="", mediasJa=""
	inteiro eu, alMudanca, mediaEscolhida, al, end=1
	faca
	{
		escreva("QUANTOS ALUNOS IRA CADASTRAR: ")
		leia(al)
		se(al < 1)
		{
			escreva(">>ERRO<<\n")
		}
	}enquanto(al < 1)
	real mt1[al]
	real mt2[al]
	real mt3[al]
	real medias[al] 
	faca
	{
		escreva("\nVOCE DESEJA\n1-INSERIR NOTAS\t\t",inseridasJa,"\n2-LISTAR NOTAS E MEDIAS\n3-CALCULAR MEDIAS\t\t",mediasJa,"\n4-MUDAR NOTA DE ALUNO\n5-ENCERRAR: \n")
		leia(eu)
		escolha (eu)
		{
		caso 1:
			limpa()
			para(inteiro i=0; i<al; i++)
			{
				escreva("DIGA A ",i+1,"° NOTA EM MT1: ")
				leia(mt1[i])
				se (mt1[i] > 10 ou mt1[i] < 0)
				{
					escreva(">>ERRO<<\n")
					i-=1
				}
			}
			para(inteiro i=0; i<al; i++)
			{
				escreva("DIGA A ",i+1,"° NOTA EM MT2: ")
				leia(mt2[i])
				se (mt2[i] > 10 ou mt2[i] < 0)
				{
					escreva(">>ERRO<<\n")
					i-=1
				}		
			}
			para(inteiro i=0; i<al; i++)
			{
				escreva("DIGA A ",i+1,"° NOTA EM MT3: ")
				leia(mt3[i])
				se (mt3[i] > 10 ou mt3[i] < 0){
				escreva(">>ERRO<<\n")
				i-=1}
			}
			inseridasJa="//JA INSERIDAS"
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
				faca
				{
					escreva("DIGA O PESO DE MT1: ")
					leia(p1)
					se (p1 < 0)
					{
						escreva(">>ERRO<<\n")
					}
				}enquanto(p1 < 0)	
				faca
				{
					escreva("DIGA O PESO DE MT2: ")
					leia(p2)
					se (p2 < 0)
					{
						escreva(">>ERRO<<\n")
					}
				}enquanto(p2 < 0)	
				faca
				{
					escreva("DIGA O PESO DE MT3: ")
					leia(p3)
					se (p3 < 0)
					{
						escreva(">>ERRO<<\n")
					}
				}enquanto(p3 < 0)		
			}
			para(inteiro i=0; i<al; i++)
			{
				medias[i]=((mt1[i]*p1)+(mt2[i]*p2)+(mt3[i]*p3))/(p1+p2+p3)
			}
			mediasJa="//MEDIAS CALCULADAS"
		pare
    	caso 4:
			limpa()
			faca
			{
				escreva("VOCE QUER MUDAR A NOTA DE QUAL ALUNO? DE 1 A ",al,": ")
				leia(alMudanca)
				alMudanca-=1
				se (alMudanca<0 ou alMudanca>al-1)
				{
					escreva(">>ERRO<<\n")
				}
			}enquanto(alMudanca<0 ou alMudanca>al-1)
			faca
			{
				escreva("EM QUAL MATERIA ESSA NOTA DEVERA SER MUDADA? 1-MT1 2-MT2 OU 3-MT3: ")
				leia(eu)
				se(eu<1 ou eu>3)
				{
					escreva(">>ERRO<<\n")
				}
			}enquanto(eu<1 ou eu>3)
			escolha(eu)
			{
				caso 1:
				faca
				{
					escreva("QUAL A NOVA NOTA A SER POSTA NO LUGAR DE ", mt1[alMudanca], ": ")
					leia(mt1[alMudanca])
					se (mt1[alMudanca] > 10 ou mt1[alMudanca] < 0)
					{
						escreva(">>ERRO<<\n")
					}
				}enquanto(mt1[alMudanca] > 10 ou mt1[alMudanca] < 0)
				pare
				caso 2:
				faca
				{
					escreva("QUAL A NOVA NOTA A SER POSTA NO LUGAR DE ", mt2[alMudanca], ": ")
					leia(mt2[alMudanca])
					se (mt2[alMudanca] > 10 ou mt2[alMudanca] < 0)
					{
						escreva(">>ERRO<<\n")
					}
				}enquanto(mt2[alMudanca] > 10 ou mt2[alMudanca] < 0)
				pare
				caso 3:
				faca
				{
					escreva("QUAL A NOVA NOTA A SER POSTA NO LUGAR DE ", mt3[alMudanca], ": ")
					leia(mt3[alMudanca])
					se (mt3[alMudanca] > 10 ou mt3[alMudanca] < 0)
					{
						escreva(">>ERRO<<\n")
					}
				}enquanto(mt3[alMudanca] > 10 ou mt3[alMudanca] < 0)
				pare
			}
			mediasJa="//MEDIAS DESATUALIZADAS"
		pare
		caso 5:
			end=0
	    pare
		}
    }enquanto(end==1)
  }
}
(end==1)
  }
}