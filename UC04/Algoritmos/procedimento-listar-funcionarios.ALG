Algoritmo "semnome"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Marlon Andrei de Carvalho 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 24/02/2021
Var
// Se��o de Declara��es das vari�veis 
   funcionario : vetor[0..4,0..4] de caractere
   contador1 : inteiro
   indfunc : inteiro

//procedure
procedimento listarFuncionarios()
Var
   contador2 : inteiro
   informacao : inteiro
inicio

   escreval("**** LISTAGEM DE FUNCIONARIOS ****")
   para contador2 de 0 ate 1 faca
      para informacao de 0 ate 4 faca
         escreva(funcionario[contador2,informacao]," ")
      fimpara
      escreval(" ")
   fimpara
   
fimprocedimento


procedimento listarFuncionario(indice:inteiro;titulo:caractere)
Var
   informacao : inteiro
inicio

   indice <- indice - 1

   escreval("**** ",titulo," ****")
   para informacao de 0 ate 4 faca
      escreva(funcionario[indice,informacao]," ")
   fimpara

fimprocedimento


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   para contador1 de 0 ate 1 faca
      escreva("Nome funcion�rio ",contador1+1,": ")
      leia(funcionario[contador1,0])
      escreva("Idade: ")
      leia(funcionario[contador1,1])
      escreva("Sexo: ")
      leia(funcionario[contador1,2])
      escreva("cargo: ")
      leia(funcionario[contador1,3])
      escreva("Sal�rio: ")
      leia(funcionario[contador1,4])
   fimpara
   
   listarFuncionarios()
   
   escreva("Informe qual funcionario voc� quer ver: ")
   leia(indfunc)
   listarFuncionario(indfunc,"FUNCIONARIO")

Fimalgoritmo