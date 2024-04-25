//EX4-Usando um loop "para", como você imprimiria a tabuada de um número fornecido pelo usuário?

programa {
  funcao inicio()
  {
    inteiro n
    escreva("diga o número para a tabuada: ")
    leia(n)
    para (inteiro i=1; i<11; i++)
    escreva (n,"*",i,"=",n*i,"\n")
  }
}
