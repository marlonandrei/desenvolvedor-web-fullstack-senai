Algoritmo "semnome"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Marlon Andrei de Carvalho 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 20/02/2021
Var
// Se��o de Declara��es das vari�veis 
   alunos : vetor[1..4,1..3] de caractere

   linha : inteiro
   coluna : inteiro
   
   soma : real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   soma <- 0
   para linha de 1 ate 2 faca
   
        escreva("Digite o codigo: ")
        leia(alunos[linha,1])

        escreva("Digite o nome: ")
        leia(alunos[linha,2])

        escreva("Digite a nota: ")
        leia(alunos[linha,3])
        
        soma <- soma + Caracpnum(alunos[linha,3])
   fimpara
   
   escreval("C�digo Nome Nota")
   para linha de 1 ate 2 faca
      para coluna de 1 ate 3 faca
        escreva(alunos[linha,coluna]," ")
      fimpara
      escreval(" ")
   fimpara
   
   escreva("A media da sala foi: ", soma/2)

Fimalgoritmo