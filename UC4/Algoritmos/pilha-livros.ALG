Algoritmo "semnome"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Marlon Andrei de Carvalho 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/03/2021
Var
// Seção de Declarações das variáveis 
   livros : vetor[1..4] de caractere
   ponteiro : inteiro
   qtdmax : inteiro
   opcmenu : inteiro
   enter : caractere


procedimento adicionarPilha()
Var
   livro : caractere
inicio

   se (ponteiro <= qtdmax) entao

      escreva("Informe o livro para adicionar: ")
      leia(livro)

      livros[ponteiro] <- livro
      ponteiro <- ponteiro + 1
      
   senao
   
      escreval("A pilha está cheia!")
   
   fimse

fimprocedimento


procedimento listarPilha()
var
   cont : inteiro
   listou : logico
inicio

   listou <- falso
   para cont de ponteiro-1 ate 1 passo -1 faca
      escreval(livros[cont])
      listou <- verdadeiro
   fimpara
   
   se (nao listou) entao
      escreval("Não há nenhum livro na pilha!")
   fimse

fimprocedimento


procedimento removerPilha()
inicio

   se (ponteiro = 1) entao
      escreval("Não há nenhum livro na pilha!")
   senao
   
      escreval("Livro ",livros[ponteiro-1]," removido!")
      livros[ponteiro-1] <- ""
      ponteiro <- ponteiro - 1
   
   fimse

fimprocedimento


procedimento limparPilha()
var
   cont : inteiro
inicio

   para cont de ponteiro-1 ate 1 passo -1 faca
      livros[cont] <- ""
   fimpara
   ponteiro <- 1
   escreval("Pilha limpa!")

fimprocedimento


funcao vaziaPilha():logico
inicio
   retorne (ponteiro = 1)
fimfuncao



Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   ponteiro <- 1
   qtdmax <- 3
   
   repita
      limpatela
      escreval("Escolha uma opção:")
      escreval("1 - Adicionar")
      escreval("2 - Remover")
      escreval("3 - Limpar")
      escreval("4 - Listar")
      escreval("5 - Vazia")
      escreval("9 - Sair")
      leia(opcmenu)

      escolha opcmenu
         caso 1
            adicionarPilha()
         caso 2
            removerPilha()
         caso 3
            limparPilha()
         caso 4
            listarPilha()
         caso 5
            se (vaziaPilha() = verdadeiro) entao
               escreval("A pilha está vazia")
            senao
               escreval("Há dados na pilha")
            fimse
      fimescolha
   
      escreval("Enter para continuar")
      leia(enter)
   
   ate opcmenu = 9

Fimalgoritmo