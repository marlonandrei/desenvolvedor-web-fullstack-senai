Algoritmo "semnome"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Marlon Andrei de Carvalho 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 20/02/2021
Var
// Se��o de Declara��es das vari�veis 
   alunos : vetor[1..3] de caractere

   notas : vetor[1..3,1..3] de inteiro

   contador : inteiro
   contnota : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

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