//O CODIGO SERVE PARA PODER REALIZAR ALGUMAS MODIFICACOES NUMA ENTRADA DE TEXTO, OU SEJA, EM UMA LETRA, FRASE OU TEXTO DE MAIOR PORTE QUE O USUARIO INSIRA. ESSAS MODIFICACOES SAO: POR EM CAIXA ALTA OU BAIXA, CONTAR CARACTERES, PEGAR UMA CERTA PARTE DO TEXTO E PROCURAR A POSICAO DE ALGO NO TEXTO

programa {
  inclua biblioteca Texto-->t
  inclua biblioteca Tipos-->tp
  funcao inicio() {
    inteiro eu, end=1, posI, posF, posTxt
    cadeia txt, saida="", procura
  
	  escreva("BEM VINDO, O PROGRAMA A SEGUIR OFERECE OPCOES PARA EXTRAIR ALGUMAS INFORMACOES E MODIFICAR UM TEXTO, APENAS SIGA AS INSTRUCOES\n\n")
    
    faca
    {
      escreva("INFORME O TEXTO: ")
      leia(txt)
      escreva("1-PARA PO-LO EM CAIXA ALTA\n2-PARA PO-LO EM CAIXA BAIXA\n3-PARA CONTAR A QUANTIA DE CARACTERES\n4-PARA PEGAR UMA FATIA DO TEXTO\n5-PARA ENCONTRAR ALGO DENTRO DO TEXTO\n6-ENCERRAR\n: ")
      leia(eu)
      escolha (eu)
      {
        //POR EM CAIXA ALTA
        caso 1: 
        {
          saida=t.caixa_alta(txt)
          pare
	      }
        
        //POR EM CAIXA BAIXA
        caso 2:
        {
          saida=t.caixa_baixa(txt)
          pare
	      }

        //CONTAR CARACTERES
        caso 3:
        {
          saida = tp.inteiro_para_cadeia(t.numero_caracteres(txt), 10) + " CARACTERES"
          pare
	      }
        
        //PEGAR UMA PARTE DO TEXTO
        caso 4:
        {
          escreva("POSICAO INICIAL DA FATIA: ")
          leia(posI)
          posI-=1
          escreva("POSICAO FINAL DA FATIA: ")
          leia(posF)
          saida = t.extrair_subtexto(txt,posI,posF)
          pare
	      }
		
        //PROCURAR ALGO NO TEXTO
        caso 5:
        {
          escreva("DIGA A PARTIR DE QUAL POSICAO DEVE PROCURAR: ")
          leia(posI)
          posI-=1
          escreva("DIGA O QUE DEVE PROCURAR: ")
          leia(procura)
          saida = tp.inteiro_para_cadeia(t.posicao_texto(procura, txt, posI)+1, 10)
          
          //PARA SE O NAO ENCONTRAR O QUE FOI PROCURADO A PARTIR DA POSICAO INSERIDA
          se (saida=="0")
          {
            saida="NAO ENCONTRADO"
          }
          pare
	      }

        //PARA SE A RESPOSTA NAO FOR VALIDA OU FOR 6
        caso contrario:
        {
          end=0
	      }
		
      }
      limpa()
      escreva ("SAIDA: ",saida,"\n\n")
    }
    enquanto(end==1)
  }
}
