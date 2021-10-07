Algoritmo "semnome"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Marlon Andrei de Carvalho 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 30/01/2021
Var
// Seção de Declarações das variáveis 
   numero : inteiro
   temmaior50 : logico
   linha : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   temmaior50 <- Falso

   escreva ("Numero1: ")
   leia (numero)
   se (numero > 50) entao
      temmaior50 <- Verdadeiro
      linha <- 1
   fimse
   
   escreva ("Numero2: ")
   leia (numero)
   se (numero > 50) entao
      temmaior50 <- Verdadeiro
      linha <- 2
   fimse

   escreva ("Numero3: ")
   leia (numero)
   se (numero > 50) entao
      temmaior50 <- Verdadeiro
      linha <- 3
   fimse

   se (temmaior50) entao
      escreval ("Há numeros maiores que 50")
      escreva ("Linha: ", linha)
   senao
      escreva ("Não há nenhum numero maior que 50")
   fimse

Fimalgoritmo