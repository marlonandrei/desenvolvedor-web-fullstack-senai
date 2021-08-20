Algoritmo "calculadoraprecos"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
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
   escreval (" 1 - Soma")
   escreval (" 2 - Subtração")
   escreval (" 3 - Multiplicação")
   escreval (" 4 - Divisão")
   escreva ("Digite o número da operação: ")
   leia (operacao)

   se (operacao = 1) entao
      resultado <- numero1 + numero2
      nomeoperacao <- "Soma"
   fimse
   se (operacao = 2) entao
      resultado <- numero1 - numero2
      nomeoperacao <- "Subtração"
   fimse
   se (operacao = 3) entao
      resultado <- numero1 * numero2
      nomeoperacao <- "Multiplicação"
   fimse
   se (operacao = 4) entao
      resultado <- numero1 / numero2
      nomeoperacao <- "Divisão"
   fimse
   
   escreva ("A ",nomeoperacao," dos dois números resulta em: ",resultado:10:2)

Fimalgoritmo