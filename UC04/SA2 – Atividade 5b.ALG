Algoritmo "semnome"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Marlon Andrei de Carvalho 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/02/2021
Var
// Se��o de Declara��es das vari�veis 
   valor : real
   valordeposito : real
   taxa : real
   contagem : inteiro
   continua : caractere


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   escreva ("Valor inicial: ")
   leia(valor)
   escreva ("Valor mensal de deposito: ")
   leia(valordeposito)
   escreva ("Taxa de juros mensal: ")
   leia(taxa)

   continua <- "s"
   contagem <- 1
   enquanto (continua = "s") faca
      valor <- valor + ( (valor * taxa) + valordeposito)
      escreval (contagem, " ", valor:10:2)
      contagem <- contagem + 1

      se (contagem=12) entao
         escreva ("Deseja simular mais 1 ano (s/n)?")
         leia (continua)
         contagem <- 1
      fimse
   fimenquanto

Fimalgoritmo