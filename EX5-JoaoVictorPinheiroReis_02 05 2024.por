/*EX5-Em um sistema de análise de desempenho escolar, como determinar se um aluno foi aprovado em todas as disciplinas com base em suas notas, considerando um vetor de notas e um limiar de aprovação?*/

programa
{
	funcao inicio ()
	{
		real n, nota
		cadeia nome
		escreva("QUANTIA DE DISCIPLINAS A CONSIDERAR: ")
		leia(n)
		cadeia vetor [n]
		para(inteiro i=1; i<=n; i++)
		{
			escreva("DIGA O NOME DA ",i,"° DISCIPLINA: ")
			leia(nome)
			escreva("DIGA A NOTA TIRADA EM ", nome,": ")
			leia(nota)
			se (nota>=6)
			{
				vetor[i-1]=nome+": "+nota+" (APROVADO)"
			}
			senao 
			{
				vetor[i-1]=nome+": "+nota+" (INSUFICIENTE)"
			}
			limpa()
		}
		escreva("AO FINAL, FICOU: ",vetor)
	}
}