Algoritmo "Impar-Par"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Marlon Andrei de Carvalho 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 30/01/2021
Var
// Seção de Declarações das variáveis 
   resto : inteiro
   numero : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   escreva ("Informe um numero: ")
   leia (numero)
   
   resto <- numero mod 2
   se (resto = 0) entao
      escreva ("O número é par")
   senao
      escreva ("O número é impar")
   fimse

Fimalgoritmo