algoritmo "Calculo_volume_funcao"
// Fun��o :
// Autor :
// Data : 16/04/2015
// Se��o de Declara��es
var
raio, resultado : real

funcao Calcula(raioo : real) : real
var
   total : real
inicio
   total <- 4/3 * pi * raio^3
   retorne total

fimfuncao

inicio
// Se��o de Comandos
   escreval("Informe o Valor do Raio: ")
   leia(raio)
   resultado <- Calcula(raio)
   escreval("O volume da esfera �: ",resultado )
   
fimalgoritmo
