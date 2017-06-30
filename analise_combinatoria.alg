algoritmo "semnome"
// Função :
// Autor :
// Data : 27/04/2016
// Seção de Declarações
var
FatN, FatN_, FatP, FatP_, FatNP : inteiro

funcao Fatorial(n : inteiro) : inteiro
var
I, fatorial : inteiro
inicio
se n <= 2 entao
   retorne n
senao
   retorne n * Fatorial(n-1)
fimse
fimfuncao

inicio
escreva("Informe o Valor de N: ")
leia(FatN_)
escreva("Informe o Valor de P: ")
leia(FatP_)

FatN <- Fatorial(FatN_)
FatP <- Fatorial(FatP_)
FatNP <- Fatorial((FatN_ - FatP_))

Escreval("O Resultado é: ", (FatN / (FatP * FatNP)))

fimalgoritmo
