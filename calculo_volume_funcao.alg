algoritmo "Calculo_volume_funcao"
// Função :
// Autor :
// Data : 16/04/2015
// Seção de Declarações
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
// Seção de Comandos
   escreval("Informe o Valor do Raio: ")
   leia(raio)
   resultado <- Calcula(raio)
   escreval("O volume da esfera é: ",resultado )
   
fimalgoritmo
