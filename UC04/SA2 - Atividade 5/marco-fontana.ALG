Algoritmo "aplicacao"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Marlon Andrei de Carvalho
// Descri��o   : Aplica��o de Investimento
// Autor(a)    : Marco Andr� Fontana
// Data atual  : 03/02/2021
Var
// Se��o de Declara��es das vari�veis 
   valorini : real
   deposito : real
   taxa : real
   mes : real
   juros : real
   soma : real
   contagem : inteiro
   simular : caracter

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
     escreva ("Digite o valor inicial de investimento: ")
     leia (valorini)
     escreva ("Valor mensal de dep�sito: ")
     leia (deposito)
     escreva ("Taxa de juros mensal: ")
     leia (taxa)

     soma <- valorini
     simular <- "s"
     enquanto (simular = "s") faca
         para contagem de 1 ate 12 faca
            juros <- soma * taxa + soma
            mes <- juros + deposito

            soma <- mes
            escreval ("M�s ", contagem, " =", soma:6:2)
         fimpara
         
         escreva ("Deseja simular mais um ano (s/n)? ")
         leia (simular)
            
      fimenquanto
   
Fimalgoritmo