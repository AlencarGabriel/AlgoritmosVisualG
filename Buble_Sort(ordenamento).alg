algoritmo "Buble_Sort"
// Função :
// Autor :
// Data : 19/03/2015
// Seção de Declarações 
var
   numeros : vetor[0..10] de real
   i, j : inteiro
   aux : real
inicio
// Seção de Comandos 

   para i de 1 ate 10 faca
        leia(numeros[i])
   fimpara
   
   j <- 10
   enquanto j > 1 faca
            para i de 1 ate j-1 faca
                 se numeros[i] > numeros[i+1] entao
                      aux <- numeros[i]
                      numeros[i] <- numeros[i+1]
                      numeros[i+1] <- aux
                 fimse
            fimpara
            j <- j - 1
   fimenquanto
   
       escreva("Vetor Ordenado: ")
       para i de 1 ate 10 faca
            escreva(numeros[i])
       fimpara

fimalgoritmo
