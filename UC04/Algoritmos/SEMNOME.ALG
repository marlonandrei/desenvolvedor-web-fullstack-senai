Algoritmo "semnome"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Marlon Andrei de Carvalho 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/02/2021
Var
// Se��o de Declara��es das vari�veis 
   numero : inteiro
   soma : inteiro
   contagem : inteiro

Inicio

   // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   //soma <- 0
   //contagem <- 1
   //enquanto (contagem <= 10) faca
      //BLOCO
   //   escreva ("Digite numero",contagem,": ")
   //   leia (numero)
   //   soma <- soma + numero
      
   //   contagem <- contagem + 1
   //fimenquanto
   
   soma <- 0
   contagem <- 1
   repita
   
      escreva ("Digite numero",contagem,": ")
      leia (numero)
      soma <- soma + numero

      contagem <- contagem + 1

   //***ENQUANTO N�O FOR***
   ate (contagem > 10)

   escreva ("A soma �: ", soma)

Fimalgoritmo