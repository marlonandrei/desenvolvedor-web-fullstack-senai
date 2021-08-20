Algoritmo "ordenacao"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/03/2021
Var
   // Seção de Declarações das variáveis
   senha: vetor[1..20] de inteiro
   ponteiro: inteiro
   opcao, qddmax:inteiro

procedimento empilhar() ]
var
   num: caractere
inicio
   se (ponteiro <= qddmax)entao
      escreval("Digite uma senha")
      leia (senha[ponteiro])
      ponteiro<- ponteiro+1
   senao
      escreval("pilha cheia!")
   fimse
fimprocedimento

procedimento desempilhar()
inicio

   se ponteiro = 1 entao
      escreval("a pilha está vazia")
   senao
      escreval("senha  ",senha[ponteiro-1],  "removida!")
      senha[ponteiro-1] <- 0
      ponteiro <- ponteiro-1
   fimse
fimprocedimento

procedimento limparPilha()
var
   cont:inteiro
inicio
   para cont de ponteiro-1 ate 1 passo-1 faca
      senha[cont] <- caracpnum("")
   fimpara
   ponteiro<- 1
   escreval ("PILHA LIMPA!")
fimprocedimento


procedimento listarPilha()
var
   cont: inteiro
inicio
   cont <- qddmax
   para cont de ponteiro-1 ate 1 passo -1 faca
      escreval(senha[cont])
   fimpara
   se (ponteiro = 1)entao
      escreval("a pilha está vazia")
   fimse
fimprocedimento


procedimento ordenarVetor()
var
   cont1,cont2,indice,aux : inteiro
inicio

   se (ponteiro = 1) entao
      escreval("Pilha está vazia!")
   senao

      para cont1 de ponteiro-2 ate 2 passo -1 faca
         para cont2 de 1 ate cont1 faca
            indice <- cont2+1
            se (senha[cont2] > senha[indice]) entao
               aux <- senha[cont2]
               senha[cont2] <- senha[indice]
               senha[indice] <- aux
            fimse
         fimpara
      fimpara
      
      listarPilha()
      
      escreval("a menor senha é: ", senha[1])
      escreval("a maior senha é: ", senha[ponteiro-1])
      
   fimse

fimprocedimento



procedimento ordenarLista()
var
   cont, ponteiro, aux: inteiro
inicio
   escreval("LISTAGEM ORDENADA")
   para ponteiro de 1 ate 19 faca
      para cont de ponteiro+1 ate 20 faca
         se senha[cont]< senha[ponteiro]entao
            aux<- senha[cont]
            senha[cont] <- senha[ponteiro]
            senha[ponteiro]<- aux
         fimse
         se (cont = 1)entao
            escreval("a pilha está vazia")
         fimse
      fimpara
   fimpara

   para ponteiro de 1 ate 20 faca
      escreval (senha[ponteiro])
   fimpara
   escreval("a menor senha é: ", senha[1])
   escreval("a maior senha é: ", senha[20])
fimprocedimento

funcao vaziaPilha():logico
inicio
   retorne (ponteiro = 1)
fimfuncao

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   qddmax<- 20
   ponteiro<- 1

   repita
      escreval("==================")
      escreval("      MENU")
      escreval("==================")
      escreval("(1) para empilhar")
      escreval("(2) para desempilhar")
      escreval("(3) para limpar")
      escreval("(4) para listar")
      escreval("(5) para vazia")
      escreval("(6) para Ordenar")
      leia(opcao)
      escolha opcao
      caso(1)
         empilhar()
      caso(2)
         desempilhar()
      caso (3)
         limparPilha()
      caso (4)
         listarPilha()
      caso(5)
         se (vaziaPilha() = verdadeiro) entao
            escreval ("Pilha vazia")
         senao
            escreval ("Há dados na pilha")
         fimse
      caso(6)
         ordenarVetor()
         //ordenarLista()

      fimescolha
   ate opcao=9
fimrepita


Fimalgoritmo
