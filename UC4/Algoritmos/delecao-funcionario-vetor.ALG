Algoritmo "semnome"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Marlon Andrei de Carvalho 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 24/02/2021
Var
// Seção de Declarações das variáveis 
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
   
// Seção de Comandos, procedimento, funções, operadores, etc... 
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