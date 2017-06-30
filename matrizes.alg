algoritmo "semnome"
// Função :
// Autor :
// Data : 07/04/2015
// Seção de Declarações 
var
numeros : vetor[1..5,1..5] de inteiro
i, ii : inteiro
inicio
// Seção de Comandos

para i de 1 ate 5 faca
    para ii de 1 ate 5 faca
        escreva("Entre com o número da ",i, " linha e ",ii," coluna: ")
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
