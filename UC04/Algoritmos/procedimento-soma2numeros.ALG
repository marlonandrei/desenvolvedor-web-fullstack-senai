Algoritmo "semnome"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Marlon Andrei de Carvalho 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/02/2021
Var
// Seção de Declarações das variáveis 
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
// Seção de Comandos, procedimento, funções, operadores, etc... 

   exibeTitulo()
   escreva("Digite o primeiro numero: ")
   leia(num1)
   escreva("Digite o segundo numero: ")
   leia(num2)
   
   retSoma <- 0
   somaNumeros(num1,num2,retSoma)
   escreval("A soma é: ",retSoma)

   escreval("A multiplicação é: ",multiplicaNumeros(num1,num2))

Fimalgoritmo