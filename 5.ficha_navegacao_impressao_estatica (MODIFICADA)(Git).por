programa {
  inclua biblioteca Texto --> tx
  inclua biblioteca Tipos --> tp
  logico navegacaoCalculada = verdadeiro//valor estatico - deve ser modificado

  

  /***********************************************************************************************/
  /*--------------------------------------FUNCOES DE APOIO---------------------------------------*/
  /***********************************************************************************************/
  /**
   * Tem por unica finaliddade solicitar ao usuario que tecle alguma tecla para continuar um determinado processo
   */
  funcao continuar(){
    cadeia enter
    escreva("Pressione ENTER para continuar ...\n") 
    leia(enter)  
  }

  /**
   * Realiza a formata��o de uma determinada mensagem do programa
   */
  funcao formataMensagem(cadeia mensagem, inteiro tamanhoLinha){
    //mensagem = "| " + mensagem
    //cadeia mensgFormatada = tx.preencher_a_direita(" ",tamanhoLinha-1, mensagem) + "|\n"
    //escreva(mensgFormatada)
	inteiro compl
	compl = tamanhoLinha - tx.numero_caracteres(mensagem) - 4
	para (inteiro i = 0; i < compl; i++)
	{
		mensagem+=" "
	}
	escreva("| " + mensagem + " |\n")
  }

  /**
   * Realiza a formata��o de um texto que ser� utilizado na impress�o da ficha de navegacao
   */
  funcao cadeia formataTexto(cadeia mensagem){
    mensagem = "| " + mensagem
    inteiro numeroCaracteres = tx.numero_caracteres(mensagem)
    cadeia mensgFormatada
    se(numeroCaracteres> 24){
      mensagem = tx.extrair_subtexto(mensagem, 0, 20)+" ..."
    }
    //mensgFormatada = tx.preencher_a_direita(' ',24, mensagem)
	retorne mensgFormatada
  }

  /**
   * Realiza a formata��o de um numero que ser� utilizado na impress�o da ficha de navegacao
   * qtdCasaDec - Quantida de zeros que ser�o preenchidos a esquerda do numero
   */
  funcao cadeia formataNumero(inteiro numero, inteiro qtdCasaDec){
    retorne tx.preencher_a_esquerda('0',qtdCasaDec, ""+numero)
  }
  funcao imprimeCabecalho(cadeia nomeMenu){
    nomeMenu = "  MENU - " + nomeMenu
    inteiro tamanho = tx.numero_caracteres(nomeMenu)
    cadeia linha = "+_"
    para(inteiro i = 0; i< tamanho; i++){
      linha +="_"
    }
    linha +="_+"

    escreva(linha, "\n")
    escreva(tx.caixa_alta(nomeMenu),"\n")
    escreva(linha, "\n")
  }
  /***********************************************************************************************/
  /*--------------------------------------FUNCOES DE IMPRESSOES----------------------------------*/
  /***********************************************************************************************/
  /**
   * Funcao para imprimir uma mensagem de erro personalizada para o usu�rio
   */
  funcao imprimeErro(cadeia erro){
    erro = "  ERRO - " + erro
    inteiro tamanho = tx.numero_caracteres(erro)
    cadeia linha = "*-"
    para(inteiro i = 0; i< tamanho; i++){
      linha +="-"
    }
    linha +="-*"

    escreva(linha, "\n")
    escreva(erro,"\n")
    escreva(linha, "\n")
  }

  /**
   * Exemplo de funcao para imprimir o menu principal (obviamente voc�s ir�o alterar conforme o programa de voces)
   */
  funcao inteiro MenuPrincipal(){
    limpa()
    cadeia linhaImpressa = "+_________________MENU PRINCIPAL__________________+"
    inteiro tamanhoLinhaDivisoria = tx.numero_caracteres(linhaImpressa), eu
    escreva(linhaImpressa,"\n")
    formataMensagem("1 - Cadastro de informa��es", tamanhoLinhaDivisoria)
    formataMensagem("2 - Imprimir tabela", tamanhoLinhaDivisoria)
    formataMensagem("3 - SAIR", tamanhoLinhaDivisoria)
	  linhaImpressa=""
	  para(inteiro i = 0; i < tamanhoLinhaDivisoria - 2; i++)
	  {
	  	linhaImpressa+="_"
	  }
	  escreva("+" + linhaImpressa+ "+")
    escreva("\n\nInforme uma opcao: ")
    leia(eu)
    retorne eu
    }
  
  funcao imprimirFichaNavegacao(inteiro qtPts, cadeia pontos[], inteiro rumos[], real distancias[], real tempos[], real etos[])
  {
    se(navegacaoCalculada){
      escreva("________________________________________________________________________________ \n") 
      escreva("REFERENCIA                  |   RM     |   DISTANCIA   |   TEMPO   |   ETO     | \n")
      escreva("-------------------------------------------------------------------------------- \n")  
      para(inteiro i = 0; i<qtPts; i++){
        cadeia impressao = formataTexto(pontos[i]) + "    |   " + formataNumero(rumos[i], 3) +"    |       " + formataNumero(distancias[i], 2) +"      |    " + formataNumero(tempos[i], 2) + "     |   "+ etos[i] + "   |    \n"
        escreva(impressao)
      }
      escreva("________________________________________________________________________________ \n")
    }senao{
      imprimeErro("A navegacao nao foi calculada/processada. Por favor, realize a insercao dos dados de navegacao")
    }
  }

  /***********************************************************************************************/
  /*--------------------------------------FUNCOES PARA VALIDACAO---------------------------------*/
  /***********************************************************************************************/


  /***********************************************************************************************/
  /*--------------------------------------FUNCOES DE CALCULOS------------------------------------*/
  /***********************************************************************************************/


  /***********************************************************************************************/
  /*--------------------------------------FUNCOES DO PROGRAMA------------------------------------*/
  /***********************************************************************************************/
  
	funcao cadeia mudarHorario(cadeia input, inteiro opHora, inteiro opMinuto)
	{
    inteiro hora = tp.cadeia_para_inteiro(tx.extrair_subtexto(input, 0 , 1)) + opHora
    inteiro minuto = tx.extrair_subtexto(input, 3 , 4) + opMinuto
    cadeia output = hora+":"+minuto
    retorne output
	}

  /***********************************************************************************************/
  /*--------------------------------------FUNCAO PRINCIPAL DO PROGRAMA---------------------------*/
  /***********************************************************************************************/
  funcao inicio() {
    inteiro qtPts
  	logico end
  	escreva("QUANTIA PONTOS DE REFERENCIA: ")
  	leia(qtPts)
  	inteiro rumos[qtPts], horaPouso, gmt
  	cadeia pontos[qtPts],indicativos[2], horaDecolagem
  	real distancias[qtPts], tempos[qtPts], etos[qtPts], consHora, distanciaTotal, consumoTotal
    escolha(MenuPrincipal())
    {
      caso 1: //input
      {
        escreva("DIGA O CODIGO DO AERODROMO DE ORIGEM: ")
        //indicativos[0] = validarIndicativos()
        continuar()
        escreva("DIGA O CODIGO DO AERODROMO DE DESTINO: ")
        //indicativos[1] = validarIndicativos()
        continuar()
        escreva("DIGA O CONSUMO DE COMBUSTIVEL A HORA: ")
        //consHora = validarConsumo()
        continuar()
        escreva("DIGA O HORARIO DE DECOLAGEM [HH:MM <GMT>]: ")
        leia(horaDecolagem)
        horaDecolagem = tx.extrair_subtexto(horaDecolagem, 0, 4)
        gmt = tp.cadeia_para_inteiro(tx.extrair_subtexto(horaDecolagem, 6, 7))
        horaPouso = mudarHorario(horaDecolagem, gmt)
        escreva(horaPouso)

        para(inteiro i = 0; i < qtPts; i++)
        {
          escreva("DIGA O NOME DO PONTO " + i+1 + ": ")
          leia(pontos[i])
          escreva("DIGA O RUMO DO PONTO " + i+1 + ": ")
          leia(rumos[i])
          se (i==0)
          {
            distancias[i]=0
          }
          senao
          {
            escreva("DIGA A DISTANCIA DO PONTO " + i + "AO PONTO " + i+1 + ": ")
            leia(distancias[i])
          }
        }
        pare
      }
      
      caso 2: //impressao
      {
      
      imprimirFichaNavegacao(qtPts, pontos, rumos, distancias, tempos, etos)
      pare
      }
      
      caso 3: //encerramento
      {
      end=falso
      pare
      }
    }
  }
}