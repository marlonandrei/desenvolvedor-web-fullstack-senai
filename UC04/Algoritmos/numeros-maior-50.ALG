Algoritmo "semnome"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Marlon Andrei de Carvalho 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 30/01/2021
Var
// Se��o de Declara��es das vari�veis 
   numero : inteiro
   temmaior50 : logico
   linha : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   temmaior50 <- Falso

   escreva ("Numero1: ")
   leia (numero)
   se (numero > 50) entao
      temmaior50 <- Verdadeiro
      linha <- 1
   fimse
   
   escreva ("Numero2: ")
   leia (numero)
   se (numero > 50) entao
      temmaior50 <- Verdadeiro
      linha <- 2
   fimse

   escreva ("Numero3: ")
   leia (numero)
   se (numero > 50) entao
      temmaior50 <- Verdadeiro
      linha <- 3
   fimse

   se (temmaior50) entao
      escreval ("H� numeros maiores que 50")
      escreva ("Linha: ", linha)
   senao
      escreva ("N�o h� nenhum numero maior que 50")
   fimse

Fimalgoritmo