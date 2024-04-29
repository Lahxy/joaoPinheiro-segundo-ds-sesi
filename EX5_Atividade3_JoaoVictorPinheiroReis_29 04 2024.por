/**Exercício 5 - Calculo de Media Aritmetica 

Construa um algoritmo que calcule a média aritmética das 3 notas dos alunos de uma classe. O algoritmo deverá ler a quantidade de alunos (qtdeAlunos), realizar um laço de repetição para ler as 3 notas, calcular a media deste aluno e guardar em um vetor de medias. Após deve imprimir as medias calculadas.

Dicas: 

Solicite ao usuário a quantidade de alunos que ira calcular a media (qtdeAlunos)
crie um vetor media com a quantidade informada
faça um laço de repetição (a sua escolha) e solicite as 3 notas do aluno. Então calcule a media a partir delas.
Guarde o valor da media na posição do vetor
Em um segundo laço de repetição, imprima o vetor de medias;
OBS: Utilize para, enquanto e faca-enquanto (qualquer um deles)

 OBS2: Não serão aceitos fotografias de codigo. Deve-se enviar os arquivos (.por) das atividades.

OBS3: Nomear os arquivos da seguinte forma: EX 1 - [NOME DO ALUNO] */

programa {
  funcao inicio() {
    real alunos, n1, n2, media
    escreva("diga a quantidade de alunos: ")
    leia(alunos)
    real medias[alunos]
    para (inteiro k=1; k<alunos+1; k++)
    {
      n2=0
      para (inteiro i = 1; i<4; i++)
      {
        escreva("diga a ",i,"° nota do ",k,"° aluno: ")
        leia(n1)
        n2+=n1
      }
      medias[k-1]=n2/3
    }
    escreva("as medias sao: ",medias)
  }
}
