Algoritmo "semnome"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Marlon Andrei de Carvalho 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 24/02/2021
Var
// Se��o de Declara��es das vari�veis 
   funcionarios : vetor[1..4] de caractere
   contador : inteiro
   qtdfuncionarios : inteiro
   nome : caractere
   
   
   
   
procedimento listarFuncionarios()
Var
   contador : inteiro
inicio
   para contador de 1 ate qtdfuncionarios faca
      escreval(funcionarios[contador])
   fimpara
fimprocedimento






procedimento deletarFuncionario(nome:caractere)
Var
   contador : inteiro
   cont2 : inteiro
inicio

   contador <- 1
   enquanto ((contador <= qtdfuncionarios) e (Minusc(funcionarios[contador]) <> Minusc(nome))) faca
      contador <- contador + 1
   fimenquanto
   
   se (contador <= qtdfuncionarios) entao
      para cont2 de contador ate qtdfuncionarios faca
         funcionarios[cont2] <- funcionarios[cont2+1]
      fimpara
      funcionarios[qtdfuncionarios] <- ""
   fimse

fimprocedimento


Inicio
   qtdfuncionarios <- 3
   
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   para contador de 1 ate qtdfuncionarios faca
        escreva("Digite o funcionario ",contador,": ")
        leia(funcionarios[contador])
   fimpara
   
   listarFuncionarios()
   escreval(" ")

   escreva("Qual funcionario deseja deletar: ")
   leia(nome)
   deletarFuncionario(nome)
   
   escreval(" ")

   listarFuncionarios()
   

Fimalgoritmo