Algoritmo "semnome"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Marlon Andrei de Carvalho 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/02/2021
Var
// Se��o de Declara��es das vari�veis 
   num1,num2, retSoma : inteiro

procedimento exibeTitulo()
inicio
   escreval("*** Algoritmo de calculo ***")
fimprocedimento


funcao multiplicaNumeros(numero1,numero2:inteiro):inteiro
inicio
   retorne (numero1*numero2)
fimfuncao


procedimento somaNumeros(var numero1,numero2,soma:inteiro)
inicio
   soma <- numero1 + numero2
fimprocedimento


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   exibeTitulo()
   escreva("Digite o primeiro numero: ")
   leia(num1)
   escreva("Digite o segundo numero: ")
   leia(num2)
   
   retSoma <- 0
   somaNumeros(num1,num2,retSoma)
   escreval("A soma �: ",retSoma)

   escreval("A multiplica��o �: ",multiplicaNumeros(num1,num2))

Fimalgoritmo