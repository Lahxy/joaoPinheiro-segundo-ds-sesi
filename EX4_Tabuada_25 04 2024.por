//EX4-Usando um loop "para", como voc� imprimiria a tabuada de um n�mero fornecido pelo usu�rio?

programa {
  funcao inicio()
  {
    inteiro n
    escreva("diga o n�mero para a tabuada: ")
    leia(n)
    para (inteiro i=1; i<11; i++)
    escreva (n,"*",i,"=",n*i,"\n")
  }
}
