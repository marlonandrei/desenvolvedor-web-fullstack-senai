Algoritmo "semnome"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Marlon Andrei de Carvalho 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 30/01/2021
Var
// Seção de Declarações das variáveis 
   numero : inteiro
   resto : inteiro
   testelogico : logico


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
   escreva ("Digite o numero: ")
   leia (numero)
   
   resto <- numero mod 2

   se (resto = 0) entao
      escreval ("Numero é par!")
   senao
      escreval ("Numero é impar!")
   fimse
   
   testelogico <- (numero > 50)
   se (testelogico) entao
      escreva ("Número maior que 50.")
   fimse

   testelogico <- numero < 50
   se (testelogico) entao
      escreva ("Numero menor que 50.")
   fimse


Fimalgoritmo