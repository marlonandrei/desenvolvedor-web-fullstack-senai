Algoritmo "semnome"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Marlon Andrei de Carvalho 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
Var
// Se��o de Declara��es das vari�veis

investinicial : real
depositomensal : real
tx : real
cont : inteiro
continua : caractere

Inicio


      escreva ("Valor inicial de investimento: ")
      leia (investinicial)
      escreva ("Valor mensal de deposito: ")
      leia (depositomensal)
      escreva ("Taxa de juros mensal: ")
      leia (tx)

      continua <- "s"
      enquanto (continua="s") faca
         para cont de 1 ate 12  faca
              investinicial <- investinicial + (investinicial * tx) + depositomensal
              escreval(cont, " " , investinicial:12:2)
         fimpara

         escreva("Deseja simular mais 1 ano (s/n)?")
         leia(continua)
      fimenquanto

Fimalgoritmo