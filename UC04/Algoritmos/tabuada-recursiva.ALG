Algoritmo "semnome"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Marlon Andrei de Carvalho 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 24/02/2021
Var
// Se��o de Declara��es das vari�veis 
   tabuada : inteiro
   
procedimento listarTabuada(tab,numero:inteiro)
inicio

   se (numero <= 10) entao
      escreval(tab," x ",numero," = ",tab*numero)
      listarTabuada(tab,numero+1)
   fimse
   
fimprocedimento
   

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   escreva("Qual tabuada voce quer: ")
   leia(tabuada)
   
   listarTabuada(tabuada,0)

Fimalgoritmo