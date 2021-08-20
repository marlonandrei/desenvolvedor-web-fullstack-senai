Algoritmo "semnome"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Marlon Andrei de Carvalho 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/03/2021
Var
// Seção de Declarações das variáveis 
   funcionarios: vetor[0..4,0..4] de caractere
   linha,coluna : inteiro
   qtdmax : inteiro
   
   menorIdade, posMenorIdade : inteiro
   maiorIdade, posMaiorIdade : inteiro
   
   qtdMasc, qtdFemi : Inteiro
   
   somaSalario : real
   
   
procedimento preencherMatriz()
inicio

   funcionarios[0,0] <- "Maria Barbosa"
   funcionarios[1,0] <- "Pedro Alcantara"
   funcionarios[2,0] <- "Regina Silva"
   funcionarios[3,0] <- "Ana Pereira"
   funcionarios[4,0] <- "Alcides Marques"
   funcionarios[0,1] <- "Analista"
   funcionarios[1,1] <- "Programador"
   funcionarios[2,1] <- "Programador"
   funcionarios[3,1] <- "Programador"
   funcionarios[4,1] <- "Coodenador"
   funcionarios[0,2] <- "29"
   funcionarios[1,2] <- "23"
   funcionarios[2,2] <- "25"
   funcionarios[3,2] <- "22"
   funcionarios[4,2] <- "35"
   funcionarios[0,3] <- "F"
   funcionarios[1,3] <- "M"
   funcionarios[2,3] <- "F"
   funcionarios[3,3] <- "F"
   funcionarios[4,3] <- "M"
   funcionarios[0,4] <- "4500"
   funcionarios[1,4] <- "2500"
   funcionarios[2,4] <- "2500"
   funcionarios[3,4] <- "2500"
   funcionarios[4,4] <- "7000"

fimprocedimento



Inicio

// Seção de Comandos, procedimento, funções, operadores, etc... 
   preencherMatriz()
   qtdmax <- 4
   
   menorIdade <- 9999
   maiorIdade <- 0

   para linha de 0 ate qtdmax faca
      para coluna de 0 ate qtdmax faca
         escreval(funcionarios[linha,coluna])
      fimpara
   fimpara
   
   escreval("Término da entrada de dados")
   escreval("-------------------------------------------")

   escreval("Leitura da matriz e apresentação dos dados")
   escreval("Nome Funcao Idade Sexo Salario")
   para linha de 0 ate qtdmax faca

      para coluna de 0 ate qtdmax faca
         escreva(funcionarios[linha,coluna], " ")
      fimpara
      
      //Checar menor idade
      se (CaracpNum(funcionarios[linha,2]) < menorIdade) entao
         menorIdade <- CaracpNum(funcionarios[linha,2])
         posMenorIdade <- linha
      fimse
      
      //Checar maior idade
      se (CaracpNum(funcionarios[linha,2]) > maiorIdade) entao
         maiorIdade <- CaracpNum(funcionarios[linha,2])
         posMaiorIdade <- linha
      fimse
      
      //Masculino
      se (funcionarios[linha,3] = "M") entao
         qtdMasc <- qtdMasc + 1
      fimse

      //Feminino
      se (funcionarios[linha,3] = "F") entao
         qtdFemi <- qtdFemi + 1
      fimse

      somaSalario <- somaSalario + CaracpNum(funcionarios[linha,4])

      escreval(" ")
   fimpara

   escreval("-------------------------------------------")
   escreval("Dados estatisticos da empresa")
   escreval("Menor Idade: ",funcionarios[posMenorIdade,0]," - ",menorIdade)
   escreval("Maior Idade: ",funcionarios[posMaiorIdade,0]," - ",maiorIdade)
   escreval("Sexo Feminino: ",qtdFemi)
   escreval("Sexo Masculino: ",qtdMasc)
   escreval("Total Salários: ",somaSalario)

Fimalgoritmo