Algoritmo "semnome"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Marlon Andrei de Carvalho 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 30/01/2021
Var
// Se��o de Declara��es das vari�veis 
   numero : inteiro
   resto : inteiro
   testelogico : logico


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
   escreva ("Digite o numero: ")
   leia (numero)
   
   resto <- numero mod 2

   se (resto = 0) entao
      escreval ("Numero � par!")
   senao
      escreval ("Numero � impar!")
   fimse
   
   testelogico <- (numero > 50)
   se (testelogico) entao
      escreva ("N�mero maior que 50.")
   fimse

   testelogico <- numero < 50
   se (testelogico) entao
      escreva ("Numero menor que 50.")
   fimse


Fimalgoritmo