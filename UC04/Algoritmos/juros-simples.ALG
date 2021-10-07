Algoritmo "juros-simples"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Marlon Andrei de Carvalho 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/02/2021
Var
// Seção de Declarações das variáveis 
   valorinicial : real
   taxajurosmes : real
   qtdmeses : inteiro
   contador : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   escreva("Valor inicial: ")
   leia(valorinicial)
   
   escreva("Juros ao mes: ")
   leia(taxajurosmes)

   escreva("Quantos meses devo calcular: ")
   leia(qtdmeses)

   para contador de 1 ate qtdmeses faca
       valorinicial <- valorinicial + ( (valorinicial/100)*taxajurosmes )
       escreval(contador, valorinicial:12:2)
   fimpara
   escreva("O valor final com juros: ", valorinicial:12:2)

Fimalgoritmo