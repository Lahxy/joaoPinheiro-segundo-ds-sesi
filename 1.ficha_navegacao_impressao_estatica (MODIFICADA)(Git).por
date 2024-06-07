programa {
  inclua biblioteca Texto --> tx
  inteiro qtdePtsReferencia = 3//valor estatico - deve ser modificado
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
   * Realiza a formataï¿½ï¿½o de uma determinada mensagem do programa
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
   * Realiza a formataï¿½ï¿½o de um texto que serï¿½ utilizado na impressï¿½o da ficha de navegacao
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
   * Realiza a formataï¿½ï¿½o de um numero que serï¿½ utilizado na impressï¿½o da ficha de navegacao
   * qtdCasaDec - Quantida de zeros que serï¿½o preenchidos a esquerda do numero
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
   * Funcao para imprimir uma mensagem de erro personalizada para o usuï¿½rio
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
   * Exemplo de funcao para imprimir o menu principal (obviamente vocï¿½s irï¿½o alterar conforme o programa de voces)
   */
  funcao MenuPrincipal(){
    limpa()
    cadeia linhaImpressa = "+_________________MENU PRINCIPAL__________________+"
    inteiro tamanhoLinhaDivisoria = tx.numero_caracteres(linhaImpressa), eu
    escreva(linhaImpressa,"\n")
    formataMensagem("1 - Cadastrar notas", tamanhoLinhaDivisoria)
    formataMensagem("2 - Listar as notas e suas medias", tamanhoLinhaDivisoria)
    formataMensagem("3 - Realizar o calculo das medias ", tamanhoLinhaDivisoria)
    formataMensagem("4 - Alterar a nota de um determinado aluno ", tamanhoLinhaDivisoria)
    formataMensagem("5 - SAIR", tamanhoLinhaDivisoria)
	linhaImpressa=""
	para(inteiro i = 0; i < tamanhoLinhaDivisoria - 2; i++)
	{
		linhaImpressa+="_"
	}
	escreva("+" + linhaImpressa+ "+")
    escreva("\n\nInforme uma opcao: ")
	leia(eu)
	//retorne eu
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
  
	funcao input()
	{
		escreva("INPUT")
	}

  /***********************************************************************************************/
  /*--------------------------------------FUNCAO PRINCIPAL DO PROGRAMA---------------------------*/
  /***********************************************************************************************/
  funcao inicio() {
  	inteiro qtPts
  	logico end
  	escreva("QUANTOS PONTOS DE REFERENCIA SERAO: ")
  	leia(qtPts)
  	inteiro rumos[qtPts], aPAGAR
  	cadeia pontos[qtPts]
  	real distancias[qtPts], tempos[qtPts], etos[qtPts]
  	escreva("VARIAVEL PARA DESCARTE: ")
  	leia(aPAGAR)
	escolha(aPAGAR)//MenuPrincipal())
	{
		caso 1:
		//{
		input()
		pare
		//}
		
		caso 2:
		//{
		imprimirFichaNavegacao(qtPts, pontos, rumos, distancias, tempos, etos)
		pare
		//}
		
		caso 3:
		//{
		end=falso
		pare
		//}
		
	}
  }
}tempo[0] = 5
    eto[0] = "12:01"
    para(inteiro i = 1; i< qtdePtsReferencia; i++){
      descReferencia[i] = "Pt Referencia " + (i+1)
      rumosMagneticos[i] = 20+i
      distancia[i] = 10+i
      tempo[i] = 5+i
      eto[i] = "12:01"
    }

    /**
     * Assim é feita a chamada para  funcao que imprime a ficha de navageção
     * Você deve passar as variaveis de array/vetores com os dados que serão utilizados para imprimir as informações
     * Altere o nome da funcao e variaveis conforme achar necessario (mas obrigatoriamente altere o nome desta funcao)
     */
    imprimirFichaNavegacaoEstatico(descReferencia, rumosMagneticos, distancia, tempo, eto)
    

  }
}
