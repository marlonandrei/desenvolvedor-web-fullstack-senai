Algoritmo "media"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 16/12/2020
Var
// Seção de Declarações das variáveis 
   nota1, nota2, nota3 : inteiro
   media : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

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