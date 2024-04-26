/*Ex2:
Escreva um algoritmo que leia a quantidade de combustível abastecido em um automóvel
em litros, bem como, a distância que o automóvel percorre por litro abastecido. O
algoritmo deverá calcular e mostrar a distância máxima que o automóvel poderá atingir. */

programa {
  funcao inicio()
  {
    inteiro km, l
    escreva ("com quantos litros foi abastecido o carro: ")
    leia(l)
    escreva("quantos quilômetros ele roda por litro: ")
    leia(km)
    escreva("ele pode andar até ", l*km,"km com essa quantia de gasolina")
  }
}
