Algoritmo "semnome"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Marlon Andrei de Carvalho 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/03/2021
Var
// Se��o de Declara��es das vari�veis 
   pacientes : vetor[1..4] de caractere
   ponteiro : inteiro
   qtdmax : inteiro
   opcmenu : inteiro
   enter : caractere


procedimento adicionarFila()
Var
   livro : caractere
inicio

   se (ponteiro <= qtdmax) entao

      escreva("Informe o livro para adicionar: ")
      leia(livro)

      pacientes[ponteiro] <- livro
      ponteiro <- ponteiro + 1
      
   senao
   
      escreval("A fila est� cheia!")
   
   fimse

fimprocedimento


procedimento listarFila()
var
   cont : inteiro
   listou : logico
inicio

   listou <- falso
   para cont de ponteiro-1 ate 1 passo -1 faca
      escreval(pacientes[cont])
      listou <- verdadeiro
   fimpara
   
   se (nao listou) entao
      escreval("N�o h� nenhum livro na fila!")
   fimse

fimprocedimento


procedimento removerFila()
inicio

   se (ponteiro = 1) entao
      escreval("N�o h� nenhum livro na fila!")
   senao
   
      escreval("Livro ",pacientes[ponteiro-1]," removido!")
      pacientes[ponteiro-1] <- ""
      ponteiro <- ponteiro - 1
   
   fimse

fimprocedimento


procedimento limparFila()
var
   cont : inteiro
inicio

   para cont de ponteiro-1 ate 1 passo -1 faca
      pacientes[cont] <- ""
   fimpara
   ponteiro <- 1
   escreval("Fila limpa!")

fimprocedimento


funcao vaziaFila():logico
inicio
   retorne (ponteiro = 1)
fimfuncao



Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   ponteiro <- 1
   qtdmax <- 3
   
   repita
      limpatela
      escreval("Escolha uma op��o:")
      escreval("1 - Adicionar")
      escreval("2 - Remover")
      escreval("3 - Limpar")
      escreval("4 - Listar")
      escreval("5 - Vazia")
      escreval("9 - Sair")
      leia(opcmenu)

      escolha opcmenu
         caso 1
            adicionarFila()
         caso 2
            removerFila()
         caso 3
            limparFila()
         caso 4
            listarFila()
         caso 5
            se (vaziaFila() = verdadeiro) entao
               escreval("A fila est� vazia")
            senao
               escreval("H� dados na fila")
            fimse
      fimescolha
   
      escreval("Enter para continuar")
      leia(enter)
   
   ate opcmenu = 9

Fimalgoritmo