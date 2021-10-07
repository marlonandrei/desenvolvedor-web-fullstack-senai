Algoritmo "semnome"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Marlon Andrei de Carvalho 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/02/2021
Var
// Seção de Declarações das variáveis 
   lin,col : inteiro
   zeroum : inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
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