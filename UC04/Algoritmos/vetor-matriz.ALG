Algoritmo "semnome"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Marlon Andrei de Carvalho 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/02/2021
Var
// Se��o de Declara��es das vari�veis
   alunos : vetor[1..10] de caractere

   notas  : vetor[1..2 , 1..10] de inteiro

   contador : inteiro
   contbimestre : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   para contador de 1 ate 3 faca
   
        escreva("Nome do aluno ",contador,": ")
        leia(alunos[contador])


        para contbimestre de 1 ate 2 faca

           escreva("Nota do aluno ",contador," no bimestre ",contbimestre ,": ")
           leia(notas[contbimestre,contador])

        fimpara

   fimpara
   
   
   escreva(alunos[2])
   escreva(notas[1,2])
   escreva(notas[2,2])

Fimalgoritmo