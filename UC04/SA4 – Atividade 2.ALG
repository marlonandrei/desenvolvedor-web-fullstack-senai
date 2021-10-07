Algoritmo "Vetor Fila"
// Disciplina   : Linguagem e LÃ³gica de ProgramaÃ§Ã£o
// Professor   : Marlon
// Descricao   : SA4 - Atividade 2 - Presencial - Implementacao de FilaPagina
// Fabricante(a)    : Dario
// Data atual  : 03/03/2021
Tipo
   carro=registro
      modelo : caractere
      ano : caractere
      fabricante : caractere
   fimregistro


Var
   carros:vetor[1..4] de carro
   ponteiro : inteiro
   qtdmax : inteiro
   opcmenu : inteiro


procedimento adicionarCarro()
inicio

   se (ponteiro > qtdmax) entao
      escreval("Nao foi possivel empilhar mais carros")
   senao
      escreva("Modelo: ")
      leia(carros[ponteiro].modelo)
      escreva("ANO: ")
      leia(carros[ponteiro].ano)
      escreva("Fabricante: ")
      leia(carros[ponteiro].fabricante)
      ponteiro <- ponteiro + 1
      escreval("Carro empilhado (incluido)")
   fimse

fimprocedimento


procedimento removerCarro()
var
   cont : inteiro
inicio

   se (ponteiro = 1) entao
      escreval("N�o h� carro para remover")
   senao

      para cont de 1 ate ponteiro-1 faca
         carros[cont].modelo <- carros[cont+1].modelo
         carros[cont].ano <- carros[cont+1].ano
         carros[cont].fabricante <- carros[cont+1].fabricante
      fimpara

      ponteiro <- ponteiro - 1
      carros[ponteiro].modelo <- ""
      carros[ponteiro].ano <- ""
      carros[ponteiro].fabricante <- ""

   fimse


fimprocedimento


procedimento limparCarro()
inicio

   enquanto (ponteiro > 1) faca
      removerCarro()
   fimenquanto

fimprocedimento


procedimento listarCarros()
Var
   cont : inteiro
inicio

   para cont de 1 ate ponteiro-1 faca
      escreval(carros[cont].modelo, " - ", carros[cont].ano, " - ", carros[cont].fabricante)
   fimpara
   escreval(" ")

fimprocedimento


Funcao vazioCarro() : logico
inicio
   retorne (ponteiro = 1)
fimfuncao


Inicio
   qtdmax <- 3
   ponteiro <- 1

   repita

      escreval("Escolha uma opcao: ")
      escreval("1 - Adicionar Carro ")
      escreval("2 - Remover Carros ")
      escreval("3 - Limpar Carro ")
      escreval("4 - Listar lista ")
      escreval("4 - Vazia lista ")
      escreval("9 - Sair ")
      escreval(" ")
      leia(opcmenu)

      escolha opcmenu
      caso 1
         adicionarCarro()
      caso 2
         removerCarro()
      caso 3
         limparCarros()
      caso 4
         listarCarros()
      caso 5
         vazioCarro()
      fimescolha

   ate opcmenu = 9

Fimalgoritmo