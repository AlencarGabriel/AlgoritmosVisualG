algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 07/04/2015
// Se��o de Declara��es
var
matriz : vetor[1..2,1..5] de inteiro
matrizz : vetor[1..5,1..2] de inteiro
i, ii : inteiro
inicio
// Se��o de Comandos
escreval("Voc� ir� fazer a Transposta de uma Matriz")
escreval("Para isso monte uma matriz de 2 Linhas e 5 Colunas")
para i de 1 ate 2 faca
   para ii de 1 ate 5 faca
      escreva("Informe o valor da ",i," linha e ", ii, " Coluna: ")
      leia(matriz[i,ii])
   fimpara
fimpara

timer 60
escreva("Fazendo a M�gica Acontecer...")
Escreva("..")
Escreva("...")
Escreva("....")
Escreva(".....")
Escreva("......")
Escreva(".......")
Escreva("........")
Escreva(".........")
Escreva("..........")
Escreva("...........")
Escreva("............")
Escreval("")

//escreva("Aguarde.")
//para i de 1 ate 5 faca
//   para ii de 1 ate 2 faca
//      matrizz[i,ii] <- matriz[ii,i]
//      escreva("..")
//   fimpara
//fimpara

escreval("")
escreval("A matriz Original �: ")
para i de 1 ate 2 faca
   para ii de 1 ate 5 faca
      escreva(matriz[i,ii])
   fimpara
   escreval("")
fimpara
Escreval("A Transposta desta Matriz �: ")

para i de 1 ate 5 faca
   para ii de 1 ate 2 faca
      escreva(matriz[ii,i] :3)
   fimpara
   escreval("")
fimpara
fimalgoritmo
