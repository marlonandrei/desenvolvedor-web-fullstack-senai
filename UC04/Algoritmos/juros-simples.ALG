Algoritmo "juros-simples"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Marlon Andrei de Carvalho 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/02/2021
Var
// Se��o de Declara��es das vari�veis 
   valorinicial : real
   taxajurosmes : real
   qtdmeses : inteiro
   contador : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   escreva("Valor inicial: ")
   leia(valorinicial)
   
   escreva("Juros ao mes: ")
   leia(taxajurosmes)

   escreva("Quantos meses devo calcular: ")
   leia(qtdmeses)

   para contador de 1 ate qtdmeses faca
       valorinicial <- valorinicial + ( (valorinicial/100)*taxajurosmes )
       escreval(contador, valorinicial:12:2)
   fimpara
   escreva("O valor final com juros: ", valorinicial:12:2)

Fimalgoritmo