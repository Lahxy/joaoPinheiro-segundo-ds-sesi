/**EX4-Em um sistema de gestão de estoque, como permitir ao usuário buscar por um produto específico e verificar sua disponibilidade em estoque? Utilize uma estrutura "faca" para permitir múltiplas tentativas de busca até que o usuário encontre o produto desejado.*/

programa
{
	funcao inicio ()
	{
		inteiro end, p1=10, p2=15, p3=0 //podem ser outros valores, mas o exercicio nao cobrou perguntar nada, sendo assim pensei que nao deveria o fazer, mas usei variaveis para determinar o nome afim de deixar claro que seria possivel
		cadeia pesquisa, nmp1="Produto 1", nmp2="Produto 2", nmp3="Produto 3"
		faca
		{
			end=0
			escreva("ESTOQUE:\n1-",nmp1,"\n2-",nmp2,"\n3-",nmp3) //podem ser produtos especificos, claro, mas o exercicio nao especifica
			escreva("\ndigite o nome do produto que você quer procurar no estoque: ")
			leia(pesquisa)
			limpa()
			se (pesquisa==nmp1)
			{
				escreva("Em estoque: ",p1,"\n")
			}
			senao se (pesquisa==nmp2)
			{
				escreva("Em estoque: ", p2,"\n")
			}
			senao se (pesquisa==nmp3)
			{
				escreva("Em estoque: ", p3,"\n")
			}
			senao
			{
				escreva("INVALIDO\n\n")
				end=1
			}
		} enquanto (end==1)
	}
}