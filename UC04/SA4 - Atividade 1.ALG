Algoritmo "SA4 - Atividade 1"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Marlon Andrei de Carvalho 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/03/2021
Var
// Se��o de Declara��es das vari�veis 
   usuarios:vetor[1..4] de caractere
   ponteiro : inteiro

   qtdmax : inteiro
   opcmenu : inteiro
   
   nome : caractere
   

procedimento empilhar(nomeUsu : caractere)
inicio

   se (ponteiro > qtdmax) entao
      escreval("N�o podemos empilhar mais usuarios")
   senao
      usuarios[ponteiro] <- nomeUsu
      ponteiro <- ponteiro + 1
   fimse

fimprocedimento


procedimento listar()
var
   cont : inteiro
inicio

   para cont de 1 ate (ponteiro-1) faca
      escreval(usuarios[cont])
   fimpara

fimprocedimento


procedimento desempilhar()
inicio

   se (ponteiro = 1) entao
      escreval("N�o h� usu�rios para desempilhar")
   senao
      escreval("Usuario ",usuarios[ponteiro-1]," desempilhado")
      usuarios[ponteiro-1] <- ""
      ponteiro <- ponteiro-1
   fimse

fimprocedimento


procedimento limpar()
inicio

   enquanto (ponteiro > 1) faca
      desempilhar()
   fimenquanto
   escreval("Pilha limpa com sucesso")

fimprocedimento


funcao vazia():logico
inicio
   retorne (ponteiro = 1)
fimfuncao


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   qtdmax <- 3
   ponteiro <- 1
   
   repita
   
      escreval("Escolha uma op��o: ")
      escreval("1 - Empilhar ")
      escreval("2 - Desempilhar ")
      escreval("3 - Limpar ")
      escreval("4 - Listar ")
      escreval("5 - Vazia ")
      escreval("9 - Sair ")
      escreval(" ")
      leia(opcmenu)

      escolha opcmenu
         caso 1
            escreva("Nome do usu�rio: ")
            leia(nome)
            empilhar(nome)
         caso 2
            desempilhar()
         caso 3
            limpar()
         caso 4
            listar()
         caso 5
            se (vazia()) entao
               escreval("Pilha est� vazia")
            senao
               escreval("Pilha n�o est� vazia")
            fimse
      fimescolha
   
   ate opcmenu = 9
   
Fimalgoritmo