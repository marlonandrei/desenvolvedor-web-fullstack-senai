Algoritmo "semnome"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Marlon Andrei de Carvalho 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/02/2021
Var
// Se��o de Declara��es das vari�veis 
   lin,col : inteiro
   zeroum : inteiro

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   //MATRIZ DE 10 X 10 de 1 e 0
   //  1 0 1 0 1 0 1 0 1 0
   //  1 0 1 0 1 0 1 0 1 0
   //  1 0 1 0 1 0 1 0 1 0
   //  1 0 1 0 1 0 1 0 1 0
   //  1 0 1 0 1 0 1 0 1 0
   //  1 0 1 0 1 0 1 0 1 0
   //  1 0 1 0 1 0 1 0 1 0
   //  1 0 1 0 1 0 1 0 1 0
   //  1 0 1 0 1 0 1 0 1 0
   //  1 0 1 0 1 0 1 0 1 0

   zeroum <- 1
   para lin de 1 ate 10 faca

        para col de 1 ate 10 faca
             escreva(zeroum)
             
             se (zeroum = 1) entao
                zeroum <- 0
             senao
                zeroum <- 1
             fimse
             
        fimpara
        escreval("")

   fimpara


Fimalgoritmo