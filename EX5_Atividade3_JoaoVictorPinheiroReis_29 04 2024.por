/**Exerc�cio 5 - Calculo de Media Aritmetica 

Construa um algoritmo que calcule a m�dia aritm�tica das 3 notas dos alunos de uma classe. O algoritmo dever� ler a quantidade de alunos (qtdeAlunos), realizar um la�o de repeti��o para ler as 3 notas, calcular a media deste aluno e guardar em um vetor de medias. Ap�s deve imprimir as medias calculadas.

Dicas: 

Solicite ao usu�rio a quantidade de alunos que ira calcular a media (qtdeAlunos)
crie um vetor media com a quantidade informada
fa�a um la�o de repeti��o (a sua escolha) e solicite as 3 notas do aluno. Ent�o calcule a media a partir delas.
Guarde o valor da media na posi��o do vetor
Em um segundo la�o de repeti��o, imprima o vetor de medias;
OBS: Utilize para, enquanto e faca-enquanto (qualquer um deles)

 OBS2: N�o ser�o aceitos fotografias de codigo. Deve-se enviar os arquivos (.por) das atividades.

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
        escreva("diga a ",i,"� nota do ",k,"� aluno: ")
        leia(n1)
        n2+=n1
      }
      medias[k-1]=n2/3
    }
    escreva("as medias sao: ",medias)
  }
}
