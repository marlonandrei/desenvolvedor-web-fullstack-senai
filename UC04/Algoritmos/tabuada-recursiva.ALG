Algoritmo "semnome"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Marlon Andrei de Carvalho 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 24/02/2021
Var
// Seção de Declarações das variáveis 
   tabuada : inteiro
   
procedimento listarTabuada(tab,numero:inteiro)
inicio

   se (numero <= 10) entao
      escreval(tab," x ",numero," = ",tab*numero)
      listarTabuada(tab,numero+1)
   fimse
   
fimprocedimento
   

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   escreva("Qual tabuada voce quer: ")
   leia(tabuada)
   
   listarTabuada(tabuada,0)

Fimalgoritmo