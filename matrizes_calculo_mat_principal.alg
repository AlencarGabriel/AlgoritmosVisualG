algoritmo "semnome"
// Função :
// Autor :
// Data : 07/04/2015
// Seção de Declarações
var
numeros : vetor[1..4,1..4] de inteiro
i, ii, soma : inteiro
inicio
// Seção de Comandos

para i de 1 ate 4 faca
   para ii de 1 ate 4 faca
      escreva("Entre com o número da ",i, " linha e ",ii," coluna: ")
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
Escreval("A soma dos valores é: ", soma)

fimalgoritmo
