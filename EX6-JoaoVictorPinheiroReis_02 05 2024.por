/*EX6-Em um sistema de autenticação de usuário, como implementar a verificação de login, onde o sistema solicita o nome de usuário e senha e verifica se correspondem aos dados armazenados? Utilize a estrutura se para comparar os dados inseridos com os dados armazenados.*/

programa
{
	funcao inicio ()
	{
		inteiro end=1
		cadeia login, senha, tlogin, tsenha
		escreva("DIGA O LOGIN A SER CADASTRADO: ")
		leia(login)
		escreva("DIGA A SENHA A SER CADASTRADA: ")
		leia(senha)
		limpa()
		enquanto (end==1)
		{
			escreva("LOGIN: ")
			leia(tlogin)
			escreva("SENHA: ")
			leia(tsenha)
			se (tlogin+tsenha==login+senha)
			{
				limpa()
				escreva("ACESSO LIBERADO")
				end=0
			}
			senao
			{
				limpa()
				escreva("ACESSO NEGADO\n\n")
			}
		}
	}
}