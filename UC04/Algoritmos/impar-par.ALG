Algoritmo "Impar-Par"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Marlon Andrei de Carvalho 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 30/01/2021
Var
// Se��o de Declara��es das vari�veis 
   resto : inteiro
   numero : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   escreva ("Informe um numero: ")
   leia (numero)
   
   resto <- numero mod 2
   se (resto = 0) entao
      escreva ("O n�mero � par")
   senao
      escreva ("O n�mero � impar")
   fimse

Fimalgoritmo