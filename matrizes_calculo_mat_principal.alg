algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 07/04/2015
// Se��o de Declara��es
var
numeros : vetor[1..4,1..4] de inteiro
i, ii, soma : inteiro
inicio
// Se��o de Comandos

para i de 1 ate 4 faca
   para ii de 1 ate 4 faca
      escreva("Entre com o n�mero da ",i, " linha e ",ii," coluna: ")
      leia(numeros[i,ii])
   fimpara
fimpara
para i de 1 ate 4 faca
   para ii de 1 ate 4 faca
      se i > ii entao
           soma <- soma + numeros[i,ii]
      fimse
   fimpara
fimpara
Escreval("A soma dos valores �: ", soma)

fimalgoritmo
