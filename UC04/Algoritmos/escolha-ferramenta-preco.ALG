Algoritmo "semnome"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Marlon Andrei de Carvalho 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 30/01/2021
Var
// Se��o de Declara��es das vari�veis 
   opcferramenta : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   escreval ("Escolha uma ferramenta: ")
   escreval ("1 - Chave de fenda")
   escreval ("2 - Philips")
   escreval ("3 - Martelo")
   escreval ("4 - Chave de boca")

   leia(opcferramenta)
   
   escolha (opcferramenta)
   caso 1
      escreva ("R$ 10")
   caso 2,4
      escreva ("R$ 15")
   caso 3
      escreva ("R$ 35")
   outrocaso
      escreva ("Op��o incorreta!")
   fimescolha
   
   
Fimalgoritmo