Algoritmo "semnome"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Marlon Andrei de Carvalho 
// Descrição   : Aqui você descreve o que o programa faz! (função)
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
// Seção de Comandos, procedimento, funções, operadores, etc... 

   escreva("Valor: ")
   leia(valor)
   
   escreva(calcjuros(valor,2,12))

Fimalgoritmo