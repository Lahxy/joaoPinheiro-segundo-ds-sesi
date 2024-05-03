/**Exercicio 3:
Faça um programa que lê um vetor (vet[6]) e o escreve. A seguir, eleve cada um dos elementos do veror ao quadrado e o escreva novamente. Utilize a estrutura de repetição "para" */

programa {
  funcao inicio() {
    inteiro vetor[6], vetor2[6], pos
    para(inteiro i=0; i<6; i++)
    {
      pos=i+1
      escreva("DIGA O ",pos,"° NUMERO: ")
      leia (vetor[i])
    }
    para(inteiro i=0; i<6; i++)
    {
      vetor2[i]=vetor[i]*vetor[i]
    }
    escreva(vetor,"\n")
    escreva(vetor2)
  }
}
