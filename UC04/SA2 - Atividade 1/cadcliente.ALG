Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/01/2021
Var
// Se��o de Declara��es das vari�veis 
   renda : real
   faixa : real
   percentual : real
   compra : real;

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   escreva ("Digite a renda do cliente: ")
   leia(renda)

   faixa <- 0

   se ((renda >= 1000) e (renda <= 2999.99)) entao
      faixa <- 1
      percentual <- 0.30
   senao
      se ((renda >= 3000) e (renda <= 4999.99)) entao
         faixa <- 2
         percentual <- 0.35
      fimse
   fimse

   se (faixa = 0) entao
      escreva ("Fale com o gerente...")
   senao
       compra <- renda * percentual
       escreva ("O cliente esta na faixa ", faixa, " e pode comprar at� R$ ", compra)
   fimse

Fimalgoritmo
