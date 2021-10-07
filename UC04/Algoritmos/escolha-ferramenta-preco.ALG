Algoritmo "semnome"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Marlon Andrei de Carvalho 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 30/01/2021
Var
// Seção de Declarações das variáveis 
   opcferramenta : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   escreval ("Escolha uma ferramenta: ")
   escreval ("1 - Chave de fenda")
   escreval ("2 - Philips")
   escreval ("3 - Martelo")
   escreval ("4 - Chave de boca")

   leia(opcferramenta)
   
   escolha (opcferramenta)
   caso 1
      escreva ("R$ 10")
   caso 2,4
      escreva ("R$ 15")
   caso 3
      escreva ("R$ 35")
   outrocaso
      escreva ("Opção incorreta!")
   fimescolha
   
   
Fimalgoritmo