Algoritmo "semnome"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Marlon Andrei de Carvalho 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/02/2021
Var
// Seção de Declarações das variáveis 
   numero : inteiro
   soma : inteiro
   contagem : inteiro

Inicio

   // Seção de Comandos, procedimento, funções, operadores, etc...

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

   //***ENQUANTO NÃO FOR***
   ate (contagem > 10)

   escreva ("A soma é: ", soma)

Fimalgoritmo