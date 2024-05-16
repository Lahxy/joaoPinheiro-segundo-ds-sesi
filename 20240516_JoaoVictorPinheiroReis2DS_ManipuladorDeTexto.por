programa {
  inclua biblioteca Texto-->t
  inclua biblioteca Tipos-->tp
  funcao inicio() {
    inteiro eu, end=1, posI, posF, posTxt
    cadeia txt, saida="", procura
    faca
    {
      escreva("DIGA UM TEXTO PARA MANIPULA-LO: ")
      leia(txt)
      escreva("1-PARA PO-LO EM CAIXA ALTA\n2-PARA PO-LO EM CAIXA BAIXA\n3-PARA CONTAR A QUANTIA DE LETRAS\n4-PARA PEGAR UMA FATIA DO TEXTO\n5-PARA ENCONTRAR ALGO DENTRO DO TEXTO\n6-ENCERRAR\n: ")
      leia(eu)
      escolha (eu)
      {
        caso 1:
        
          saida=t.caixa_alta(txt)
          pare
        
        
        caso 2:
        
          saida=t.caixa_baixa(txt)
          pare
        
        

        caso 3:
        
          saida = tp.inteiro_para_cadeia(t.numero_caracteres(txt), 10) + " CARACTERES"
          pare
        
        

        caso 4:
        
          escreva("POSICAO INICIAL DA FATIA: ")
          leia(posI)
          posI-=1
          escreva("POSICAO FINAL DA FATIA: ")
          leia(posF)
          saida = t.extrair_subtexto(txt,posI,posF)
		  end = 0
          pare
        
        

        caso 5:
        
          escreva("DIGA A PARTIR DE QUAL POSICAO DEVE PROCURAR: ")
          leia(posI)
          posI-=1
          escreva("DIGA O QUE DEVE PROCURAR: ")
          leia(procura)
          saida = tp.inteiro_para_cadeia(t.posicao_texto(procura, txt, posI)+1, 10)
		  se (saida=="0")
		  {
		  	saida="NAO ENCONTRADO"
		  }
          pare
        

        caso contrario:
        
          end=0
        
      }
      limpa()
      escreva ("SAIDA: ",saida,"\n\n")
    }enquanto(end==1)
  }
}
