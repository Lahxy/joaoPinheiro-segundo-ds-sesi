/*Ex2:
Escreva um algoritmo que leia a quantidade de combust�vel abastecido em um autom�vel
em litros, bem como, a dist�ncia que o autom�vel percorre por litro abastecido. O
algoritmo dever� calcular e mostrar a dist�ncia m�xima que o autom�vel poder� atingir. */

programa {
  funcao inicio()
  {
    inteiro km, l
    escreva ("com quantos litros foi abastecido o carro: ")
    leia(l)
    escreva("quantos quil�metros ele roda por litro: ")
    leia(km)
    escreva("ele pode andar at� ", l*km,"km com essa quantia de gasolina")
  }
}
