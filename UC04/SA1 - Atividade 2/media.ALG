Algoritmo "media"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 16/12/2020
Var
// Se��o de Declara��es das vari�veis 
   nota1, nota2, nota3 : inteiro
   media : real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   escreva ("Informe a primeira nota: ")
   leia (nota1)

   escreva ("Informe a segunda nota: ")
   leia (nota2)

   escreva ("Informe a terceira nota: ")
   leia (nota3)
   
   media <- (nota1 + nota2 + nota3) / 3
   escreval (media)
   
   se (media >= 7) entao
      escreva ("Aprovado")
   senao
      escreva ("Reprovado")
   fimse

Fimalgoritmo