Algoritmo "semnome"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Marlon Andrei de Carvalho 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/02/2021
Var
// Seção de Declarações das variáveis 
   alunos : vetor[1..3, 1..3] de caractere
   contador : inteiro
   mediaaluno : real
   somamedias : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   para contador de 1 ate 3 faca
   
        escreva("Nome do aluno ",contador,": ")
        leia(alunos[contador,1])

        escreva("Nota 1: ")
        leia(alunos[contador,2])

        escreva("Nota 2: ")
        leia(alunos[contador,3])

   fimpara
   

   somamedias <- 0
   para contador de 1 ate 3 faca
        mediaaluno <- (Caracpnum(alunos[contador,2]) + Caracpnum(alunos[contador,3]))/2
        somamedias <- somamedias + mediaaluno
   fimpara
   
   escreva("A media da sala foi: ",somamedias/3)

Fimalgoritmo