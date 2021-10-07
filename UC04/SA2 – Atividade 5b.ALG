Algoritmo "semnome"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Marlon Andrei de Carvalho 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/02/2021
Var
// Seção de Declarações das variáveis 
   valor : real
   valordeposito : real
   taxa : real
   contagem : inteiro
   continua : caractere


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   escreva ("Valor inicial: ")
   leia(valor)
   escreva ("Valor mensal de deposito: ")
   leia(valordeposito)
   escreva ("Taxa de juros mensal: ")
   leia(taxa)

   continua <- "s"
   contagem <- 1
   enquanto (continua = "s") faca
      valor <- valor + ( (valor * taxa) + valordeposito)
      escreval (contagem, " ", valor:10:2)
      contagem <- contagem + 1

      se (contagem=12) entao
         escreva ("Deseja simular mais 1 ano (s/n)?")
         leia (continua)
         contagem <- 1
      fimse
   fimenquanto

Fimalgoritmo