Algoritmo "SA3-1"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Marlon Andrei de Carvalho 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/03/2021
Tipo
livro=registro
   titulo : caractere
   isbn : caractere
   autor : caractere
fimregistro


Var
// Seção de Declarações das variáveis 
   livros:vetor[1..3] de livro
   ponteiro : inteiro
   qtdmax : inteiro
   opcmenu : inteiro
   

procedimento inserirLivro()
inicio

   se (ponteiro > qtdmax) entao
      escreval("Não é possivel empilhar mais livros")
   senao
      escreva("Titulo: ")
      leia(livros[ponteiro].titulo)
      escreva("ISBN: ")
      leia(livros[ponteiro].isbn)
      escreva("Autor: ")
      leia(livros[ponteiro].autor)
      ponteiro <- ponteiro + 1
      escreval("Livro empilhado (incluido)")
   fimse

fimprocedimento


procedimento listarLivros()
Var
   cont : inteiro
inicio

   para cont de 1 ate ponteiro-1 faca
      escreval(livros[cont].titulo, " - ", livros[cont].isbn, " - ", livros[cont].autor)
   fimpara
   escreval(" ")

fimprocedimento


procedimento excluirLivro()
inicio

   se (ponteiro = 1) entao
      escreval("Não há livro para desempilhar")
   senao
   
      livros[ponteiro-1].titulo <- ""
      livros[ponteiro-1].isbn <- ""
      livros[ponteiro-1].autor <- ""
      ponteiro <- ponteiro - 1
      escreval("Livro desempilhado (excluido)")

   fimse

fimprocedimento

funcao checaVazia()
inicio

   se (1=1) entao
      retorne verdadeiro
   senao
      retorne falso
   fimse

fimfuncao


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   qtdmax <- 3
   ponteiro <- 1
   
   repita
   
      escreval("Escolha uma opção: ")
      escreval("1 - Inserir Livro ")
      escreval("2 - Listar Livros ")
      escreval("3 - Excluir Livro ")
      escreval("9 - Sair ")
      escreval(" ")
      leia(opcmenu)

      escolha opcmenu
         caso 1
            inserirLivro()
         caso 2
            listarLivros()
         caso 3
            excluirLivro()
         caso 5

            se (checaVazia()) entao
               escreva("Fila Vazia")
            senao
               escreva("Fila não está Vazia")
            fimse
         
         
      fimescolha
   
   ate opcmenu = 9
   
Fimalgoritmo