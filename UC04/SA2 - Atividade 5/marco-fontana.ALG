Algoritmo "aplicacao"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Marlon Andrei de Carvalho
// Descrição   : Aplicação de Investimento
// Autor(a)    : Marco André Fontana
// Data atual  : 03/02/2021
Var
// Seção de Declarações das variáveis 
   valorini : real
   deposito : real
   taxa : real
   mes : real
   juros : real
   soma : real
   contagem : inteiro
   simular : caracter

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
     escreva ("Digite o valor inicial de investimento: ")
     leia (valorini)
     escreva ("Valor mensal de depósito: ")
     leia (deposito)
     escreva ("Taxa de juros mensal: ")
     leia (taxa)

     soma <- valorini
     simular <- "s"
     enquanto (simular = "s") faca
         para contagem de 1 ate 12 faca
            juros <- soma * taxa + soma
            mes <- juros + deposito

            soma <- mes
            escreval ("Mês ", contagem, " =", soma:6:2)
         fimpara
         
         escreva ("Deseja simular mais um ano (s/n)? ")
         leia (simular)
            
      fimenquanto
   
Fimalgoritmo