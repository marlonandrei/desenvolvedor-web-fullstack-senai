Algoritmo "semnome"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Marlon Andrei de Carvalho 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 20/02/2021
Var
// Seção de Declarações das variáveis 
   alunos : vetor[1..3] de caractere

   notas : vetor[1..3,1..3] de inteiro

   contador : inteiro
   contnota : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   para contador de 1 ate 3 faca
   
        escreva("Digite o aluno: ")
        leia(alunos[contador])

        escreva("Digite a nota: ")
        leia(notas[contador,1])

   fimpara
   

   para contador de 1 ate 3 faca
        escreval(alunos[contador]," - ", notas[contador,1])
   fimpara

Fimalgoritmo