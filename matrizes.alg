algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 07/04/2015
// Se��o de Declara��es 
var
numeros : vetor[1..5,1..5] de inteiro
i, ii : inteiro
inicio
// Se��o de Comandos

para i de 1 ate 5 faca
    para ii de 1 ate 5 faca
        escreva("Entre com o n�mero da ",i, " linha e ",ii," coluna: ")
        leia(numeros[i,ii])
    fimpara
fimpara
para i de 1 ate 5 faca
 para ii de 1 ate 5 faca
        escreva(numeros[i,ii]:5)
    fimpara

    escreval("")
fimpara
fimalgoritmo
