Algoritmo "semnome"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Marlon Andrei de Carvalho 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/02/2021
Var
 valor: real


funcao calcjuros(valorinicial,taxa:real;periodo:inteiro) : real
inicio

   se (periodo>2) entao
      valorinicial <- valorinicial + calcjuros(valorinicial,taxa,periodo-1)
   fimse
   
fimfuncao


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   escreva("Valor: ")
   leia(valor)
   
   escreva(calcjuros(valor,2,12))

Fimalgoritmo