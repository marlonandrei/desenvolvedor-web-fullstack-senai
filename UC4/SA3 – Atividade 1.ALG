Algoritmo "SA3 – Atividade 1"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Marlon Andrei de Carvalho 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/03/2021
Tipo
usuario=registro
   nome : caractere
   idade : inteiro
fimregistro


Var
// Seção de Declarações das variáveis 
   usuarios:vetor[1..3] de usuario
   ponteiro : inteiro
   qtdmax : inteiro
   opcmenu : inteiro
   
   nomeUsuario : caractere
   posBusca : inteiro


procedimento cadastrarUsuario()
inicio

   se (ponteiro > qtdmax) entao
      escreval("Não é possivel cadastrar mais usuarios")
   senao
      escreva("Nome: ")
      leia(usuarios[ponteiro].nome)
      escreva("Idade: ")
      leia(usuarios[ponteiro].idade)
      ponteiro <- ponteiro + 1
      escreval("Usuário cadastrado com sucesso!")
   fimse

fimprocedimento


procedimento listarUsuario()
Var
   cont : inteiro
inicio

   para cont de 1 ate ponteiro-1 faca
      escreval(cont, " - " , usuarios[cont].nome, " - ", usuarios[cont].idade)
   fimpara
   escreval(" ")

fimprocedimento


funcao buscarNome(nome:caractere):inteiro
Var
   cont : inteiro
   posret : inteiro
inicio

   posret <- -1
   para cont de 1 ate ponteiro-1 faca

      se (Minusc(usuarios[cont].nome) = Minusc(nome)) entao
          posret <- cont
      fimse

   fimpara
   
   retorne posret

fimfuncao


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   qtdmax <- 3
   ponteiro <- 1
   
   repita
   
      escreval("Escolha uma opção: ")
      escreval("1 - Cadastrar Usuário ")
      escreval("2 - Listar todos Usuários ")
      escreval("3 - Buscar pelo Nome ")
      escreval("4 - Sair ")
      escreval(" ")
      leia(opcmenu)

      escolha opcmenu
         caso 1
            cadastrarUsuario()
         caso 2
            listarUsuario()
         caso 3
         
            escreva("Qual nome deseja buscar: ")
            leia(nomeUsuario)

            posBusca <- buscarNome(nomeUsuario)
            
            se (posBusca = -1) entao
               escreval("Nenhum usuário com esse nome encontrado!")
            senao
               escreval(posBusca," - ",usuarios[posBusca].nome," - ", usuarios[posBusca].idade)
            fimse

      fimescolha
   
   ate opcmenu = 4
   
Fimalgoritmo