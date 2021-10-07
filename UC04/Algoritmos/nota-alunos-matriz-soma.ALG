Algoritmo "semnome"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Marlon Andrei de Carvalho 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 20/02/2021
Var
// Seção de Declarações das variáveis 
   alunos : vetor[1..4,1..3] de caractere

   linha : inteiro
   coluna : inteiro
   
   soma : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

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
   
   escreval("Código Nome Nota")
   para linha de 1 ate 2 faca
      para coluna de 1 ate 3 faca
        escreva(alunos[linha,coluna]," ")
      fimpara
      escreval(" ")
   fimpara
   
   escreva("A media da sala foi: ", soma/2)

Fimalgoritmo