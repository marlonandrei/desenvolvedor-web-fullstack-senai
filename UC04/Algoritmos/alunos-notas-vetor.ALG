Algoritmo "semnome"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Marlon Andrei de Carvalho 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/02/2021
Var
// Se��o de Declara��es das vari�veis 
   alunos : vetor[1..3, 1..3] de caractere
   contador : inteiro
   mediaaluno : real
   somamedias : real
   
   maiornota : real
   posmaiornota : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   para contador de 1 ate 3 faca
   
        escreva("Nome do aluno ",contador,": ")
        leia(alunos[contador,1])

        escreva("Nota 1: ")
        leia(alunos[contador,2])

        escreva("Nota 2: ")
        leia(alunos[contador,3])

   fimpara
   
   menornota <- 10
   somamedias <- 0
   para contador de 1 ate 3 faca
        mediaaluno <- (Caracpnum(alunos[contador,2]) + Caracpnum(alunos[contador,3]))/2

        se (mediaaluno < menornota) entao
            menornota <- mediaaluno
            posmaiornota <- contador
        fimse

        somamedias <- somamedias + mediaaluno
   fimpara
   
   escreval("A media da sala foi: ",somamedias/3)
   escreva("Maior nota com o aluno: ", alunos[posmaiornota,1], " - ",maiornota)

Fimalgoritmo