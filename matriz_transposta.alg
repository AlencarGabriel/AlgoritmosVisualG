algoritmo "semnome"
// Função :
// Autor :
// Data : 07/04/2015
// Seção de Declarações
var
matriz : vetor[1..2,1..5] de inteiro
matrizz : vetor[1..5,1..2] de inteiro
i, ii : inteiro
inicio
// Seção de Comandos
escreval("Você irá fazer a Transposta de uma Matriz")
escreval("Para isso monte uma matriz de 2 Linhas e 5 Colunas")
para i de 1 ate 2 faca
   para ii de 1 ate 5 faca
      escreva("Informe o valor da ",i," linha e ", ii, " Coluna: ")
      leia(matriz[i,ii])
   fimpara
fimpara

timer 60
escreva("Fazendo a Mágica Acontecer...")
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
escreval("A matriz Original é: ")
para i de 1 ate 2 faca
   para ii de 1 ate 5 faca
      escreva(matriz[i,ii])
   fimpara
   escreval("")
fimpara
Escreval("A Transposta desta Matriz é: ")

para i de 1 ate 5 faca
   para ii de 1 ate 2 faca
      escreva(matriz[ii,i] :3)
   fimpara
   escreval("")
fimpara
fimalgoritmo
