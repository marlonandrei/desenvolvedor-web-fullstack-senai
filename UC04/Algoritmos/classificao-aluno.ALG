Algoritmo "semnome"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Marlon Andrei de Carvalho 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 30/01/2021
Var
// Se��o de Declara��es das vari�veis 
   nota : inteiro
   classificacao : caractere

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   escreva ("Digite uma nota de 0 a 100: ")
   leia (nota)
   
   se ( (nota < 0) ou (nota > 100) ) entao
      escreva ("Nota invalida!")
      
   senao
   
      classificacao <- ""
      se ( (nota <= 100) e (nota >= 80) ) entao
         classificacao <- "A"
      fimse

      se ( (nota <= 79) e (nota >= 60) ) entao
         classificacao <- "B"
      fimse

      se ( (nota <= 59) e (nota >= 40) ) entao
         classificacao <- "C"
      fimse

      se ( (nota <= 39) e (nota >= 20) ) entao
         classificacao <- "D"
      fimse

      se ( (nota <= 19) e (nota >= 0) ) entao
         classificacao <- "E"
      fimse

      escreva("Sua classificacao foi: ",classificacao)
      
   fimse


Fimalgoritmo