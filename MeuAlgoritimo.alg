algoritmo "MeuAlgoritimo"
// Função :  Calcular o fatorial de um número
// Autor :   GABRIEL ALENCAR
// Data : 12/03/2015
// Seção de Declarações 
var
    i, n, numero, resultado, numero_dois : inteiro
inicio
// Seção de Comandos

   Escreva("Insira o valor da Fatorial: ")
   leia(numero)
   resultado <- numero
   numero_dois <- numero
   numero <- numero -1
   para numero de numero ate 2 passo -1 faca
        resultado <- resultado * numero
   fimpara
   escreval("O fatorial de n!", numero_dois, " é: ", resultado)
   
   //para i de n ate 1 passo -1  faca
   //n <- n * (i-1)
   //fimpara
   //escreval(n)
fimalgoritmo
