Algoritmo "semnome"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Marlon Andrei de Carvalho 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/02/2021
Var
// Se��o de Declara��es das vari�veis 
   tab : inteiro


procedimento exibirTabuada(tabuada:inteiro)
var
   contador:inteiro
inicio

   para contador de 0 ate 10 faca
      escreval(tabuada," x ",contador," = ", tabuada * contador)
   fimpara
   
fimprocedimento


procedimento tabuadaRecursiva(tabuada,contador:inteiro)
inicio
   se (contador <= 10) entao
      escreval(tabuada," x ",contador," = ", tabuada * contador)
      tabuadaRecursiva(tabuada,contador+1)
   fimse
fimprocedimento


funcao retTabuada(tabuada:inteiro):caractere
var
  indice:inteiro
  ret : caractere
inicio

   ret <- ""
   para indice de 0 ate 10 faca
      ret <- ret + NumpCarac(tabuada) + " x " + NumpCarac(indice) + " = " + NumpCarac(tabuada * indice) + " | "
   fimpara
   
   retorne ret
fimfuncao


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   escreva("Qual tabuada deseja: ")
   leia(tab)
   //tabuadaRecursiva(tab,0)
   
   escreva(retTabuada(tab))

Fimalgoritmo