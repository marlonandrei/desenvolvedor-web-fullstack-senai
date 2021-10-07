Algoritmo "semnome"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Marlon Andrei de Carvalho 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/02/2021
Var
// Seção de Declarações das variáveis 
   funcionarios:vetor[1..4] de caractere
   contador : inteiro
   nome : caractere
   
procedimento listarFuncionarios()
var
   contador : inteiro
inicio
   para contador de 1 ate 3 faca
      escreval(funcionarios[contador])
   fimpara
fimprocedimento


funcao buscarFuncionario(nome:caractere):inteiro
var
   contador : inteiro
   indice : inteiro
inicio

   para contador de 1 ate 3 faca

      se (Minusc(funcionarios[contador]) = Minusc(nome)) entao
         indice <- contador
      fimse
      
   fimpara
   retorne indice
   
fimfuncao


funcao deletarFuncionario(nome:caractere):logico
var
   indice : inteiro
   contador : inteiro
   deletou : logico
inicio
   deletou <- falso
   indice <- buscarFuncionario(nome)
   
   se (indice>0) entao
   
      para contador de indice ate 3 faca
         funcionarios[contador] <- funcionarios[contador+1]
         deletou <- verdadeiro
      fimpara
      funcionarios[3] <- ""
   
   fimse
   retorne deletou

fimfuncao


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   //Inseri funcionários
   para contador de 1 ate 3 faca
      escreva("Digite o nome do funcionario ",contador,": ")
      leia(funcionarios[contador])
   fimpara
   
   //Exibir , listar funcionários
   escreval("******* LISTAGEM COMPLETA *********")
   listarFuncionarios()
   
   escreva("Qual nome deseja deletar?")
   leia(nome)
   se (deletarFuncionario(nome)) entao
      escreval("Funcionario deletado com sucesso")
   senao
      escreval("Não foi deletado nenhum funcionario")
   fimse

   escreval("******* LISTAGEM APOS DELECAO *********")
   listarFuncionarios()

Fimalgoritmo