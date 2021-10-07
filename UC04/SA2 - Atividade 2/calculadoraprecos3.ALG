Algoritmo "calculadoraprecos3"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Marlon Andrei
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/01/2021
Var
// Seção de Declarações das variáveis 
   numero1 : real
   numero2 : real
   operacao : inteiro
   nomeoperacao : caractere
   resultado : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   escreva ("Digite o número1: ")
   leia (numero1)

   escreva ("Digite o número2: ")
   leia (numero2)

   escreval ("Qual operação:")
   leia (operacao)
   
   escreval (" 1 - Soma")
   escreval (" 2 - Subtração")
   escreval (" 3 - Multiplicação")
   escreval (" 4 - Divisão")
   escreval (" 5 - Valor de PI")
   escreva ("Digite o número da operação: ")
   leia (operacao)

   escolha operacao
   caso 1
      resultado <- numero1 + numero2
      nomeoperacao <- "Soma"
   caso 2
      resultado <- numero1 - numero2
      nomeoperacao <- "Subtração"
   caso 3
      resultado <- numero1 * numero2
      nomeoperacao <- "Multiplicação"
   caso 4
      resultado <- numero1 / numero2
      nomeoperacao <- "Divisão"
   caso 5
      resultado <- 3.14
      nomeoperacao <- "Valor de PI"
   outrocaso
      nomeoperacao <- ""
   fimescolha

   se (nomeoperacao = "") entao
      escreva ("Operação incorreta!")
   senao
      escreva ("A ",nomeoperacao," dos dois números resulta em: ",resultado:10:2)
   fimse

Fimalgoritmo
