/**EX2-
 * Em um programa de análise de despesas mensais, como calcular 
 * o total de gastos em diferentes categorias (como alimentação, transporte,
 *  lazer, etc.) ao longo de um período? Utilize uma estrutura enquanto para continuar 
 * solicitando despesas até que o usuário decida parar. */

programa {
  funcao inicio() {
    real alimentacao=0, transporte=0, lazer=0, end=1.0, eu, x
    enquanto (end==1)
    {
      escreva("1-Para adicionar em alimentacao\n2-Para adicionar em transporte\n3-Para adicionar em lazer\n4-Para encerrar\n")
      leia(eu)
      se (eu==1)
      {
        escreva("Valor a adicionar: ")
        leia(x)
        alimentacao+=x
        limpa()
      }
      se(eu==2)
      {
        escreva("Valor a adicionar: ")
        leia(x)
        transporte+=x
        limpa()
      }
      se(eu==3)
      {
        escreva("Valor a adicionar: ")
        leia(x)
        lazer+=x
        limpa()
      }
      se(eu==4)
      {
        limpa()
        escreva("VALORES:\n\nAlimentacao: ",alimentacao,"\nTransporte: ", transporte, "\nLazer: ", lazer)
        end=0
      }
    }
  }
}
