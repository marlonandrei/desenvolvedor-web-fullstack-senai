Algoritmo "calculadoraprecos2"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/01/2021
Var
// Se��o de Declara��es das vari�veis 
   numero1 : real
   numero2 : real
   operacao : inteiro
   nomeoperacao : caractere
   resultado : real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   escreva ("Digite o n�mero1: ")
   leia (numero1)

   escreva ("Digite o n�mero2: ")
   leia (numero2)

   escreval ("Qual opera��o:")
   escreval (" 1 - Soma")
   escreval (" 2 - Subtra��o")
   escreval (" 3 - Multiplica��o")
   escreval (" 4 - Divis�o")
   escreva ("Digite o n�mero da opera��o: ")
   leia (operacao)

   se (operacao = 1) entao
      resultado <- numero1 + numero2
      nomeoperacao <- "Soma"
   senao

      se (operacao = 2) entao
         resultado <- numero1 - numero2
         nomeoperacao <- "Subtra��o"
      senao

         se (operacao = 3) entao
            resultado <- numero1 * numero2
            nomeoperacao <- "Multiplica��o"
         senao

            se (operacao = 4) entao
               resultado <- numero1 / numero2
               nomeoperacao <- "Divis�o"
            fimse
            
         fimse

      fimse

   fimse

   escreva ("A ",nomeoperacao," dos dois n�meros resulta em: ",resultado:10:2)

Fimalgoritmo