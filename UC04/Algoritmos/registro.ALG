Algoritmo "semnome"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Marlon Andrei de Carvalho 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/03/2021
Tipo
pessoa=registro
   nome : caractere
   cpf : caractere
   idade : inteiro
fimregistro


Var
// Se��o de Declara��es das vari�veis 
   pessoas:vetor[1..3] de pessoa
   cont : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   para cont de 1 ate 3 faca
      escreva("Nome: ")
      leia(pessoas[cont].nome)
      escreva("CPF: ")
      leia(pessoas[cont].cpf)
      escreva("Idade: ")
      leia(pessoas[cont].idade)
   fimpara
   

   para cont de 1 ate 3 faca
      escreval(pessoas[cont].nome, " - ", pessoas[cont].cpf, " - ", pessoas[cont].idade)
   fimpara

Fimalgoritmo