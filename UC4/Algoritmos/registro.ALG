Algoritmo "semnome"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Marlon Andrei de Carvalho 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/03/2021
Tipo
pessoa=registro
   nome : caractere
   cpf : caractere
   idade : inteiro
fimregistro


Var
// Seção de Declarações das variáveis 
   pessoas:vetor[1..3] de pessoa
   cont : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

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