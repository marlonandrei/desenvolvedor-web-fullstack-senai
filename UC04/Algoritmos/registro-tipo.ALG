Algoritmo "semnome"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Marlon Andrei de Carvalho 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/03/2021

Tipo
pessoa = registro
   nome : caractere
   idade : inteiro
   cpf : caractere
fimregistro


Var
// Seção de Declarações das variáveis 
   pessoas : vetor[1..3] de pessoa
   cont : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   para cont de 1 ate 3 faca
   
      escreva("Nome: ")
      leia(pessoas[cont].nome)
      escreva("Idade: ")
      leia(pessoas[cont].idade)
      escreva("Cpf: ")
      leia(pessoas[cont].cpf)

   fimpara
   
   escreva(pessoas[2].nome)


Fimalgoritmo