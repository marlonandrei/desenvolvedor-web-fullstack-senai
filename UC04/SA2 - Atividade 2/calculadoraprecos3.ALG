Algoritmo "calculadoraprecos3"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Marlon Andrei
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/01/2021
Var
// Se��o de Declara��es das vari�veis 
   numero1 : real
   numero2 : real
   operacao : inteiro
   nomeoperacao : caractere
   resultado : real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   escreva ("Digite o n�mero1: ")
   leia (numero1)

   escreva ("Digite o n�mero2: ")
   leia (numero2)

   escreval ("Qual opera��o:")
   leia (operacao)
   
   escreval (" 1 - Soma")
   escreval (" 2 - Subtra��o")
   escreval (" 3 - Multiplica��o")
   escreval (" 4 - Divis�o")
   escreval (" 5 - Valor de PI")
   escreva ("Digite o n�mero da opera��o: ")
   leia (operacao)

   escolha operacao
   caso 1
      resultado <- numero1 + numero2
      nomeoperacao <- "Soma"
   caso 2
      resultado <- numero1 - numero2
      nomeoperacao <- "Subtra��o"
   caso 3
      resultado <- numero1 * numero2
      nomeoperacao <- "Multiplica��o"
   caso 4
      resultado <- numero1 / numero2
      nomeoperacao <- "Divis�o"
   caso 5
      resultado <- 3.14
      nomeoperacao <- "Valor de PI"
   outrocaso
      nomeoperacao <- ""
   fimescolha

   se (nomeoperacao = "") entao
      escreva ("Opera��o incorreta!")
   senao
      escreva ("A ",nomeoperacao," dos dois n�meros resulta em: ",resultado:10:2)
   fimse

Fimalgoritmo
