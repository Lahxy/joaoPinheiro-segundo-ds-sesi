/*Ex 1:
Elaborar um algoritmo que l� o p�blico total de um jogo de futebol e fornece a renda do
jogo, sabendo-se que havia 4 tipos de ingressos assim distribu�dos:
� popular 10% do p�blico a R$ 5,00
� geral 50% do p�blico a R$ 10,00
� arquibancada 30% do p�blico a R$ 20,00
� cadeiras 10% do p�blico a R$ 30,00.*/

programa {
  funcao inicio()
  {
    inteiro n, c, d, v, t
    escreva ("diga a quantidade de pessoa presentes no jogo: ")
    leia (n)
    c = (n*0.1)*5
    d = (n*0.5)*10
    v = (n*0.3)*20
    t = (n*0.1)*30
    escreva ("o total pago foi de ", c+d+v+t," reais")
  }
}
