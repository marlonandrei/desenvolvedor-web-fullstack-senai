Algoritmo "semnome"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Marlon Andrei de Carvalho 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/02/2021
Var
// Seção de Declarações das variáveis
   alunos : vetor[1..10] de caractere

   notas  : vetor[1..2 , 1..10] de inteiro

   contador : inteiro
   contbimestre : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

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