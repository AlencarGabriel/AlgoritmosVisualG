
algoritmo "VerTriangulo"
// Fun��o :  Ler 3 valores e descobrir se � ou nao um triangulo
// Autor :   GABRIEL ALENCAR
// Data : 10/03/2015
// Se��o de Declara��es
var
varUm, varDois, varTres: real
inicio
// Se��o de Comandos

escreval("Ler 3 valores e descobrir se � ou nao um triangulo")
escreva("Insira o valor do Primeiro lado:_")
leia(varUm)
escreva("Insira o valor do Segundo lado:_")
leia(varDois)
escreva("Insira o valor do Terceiro lado:_")
leia(varTres)

//formula

se((varUm >= varDois + varTres) OU (varDois >= varUm + varTres) OU (varTres >= varUm + varDois))  entao
   escreval("Isto n�o � um Tri�ngulo")
senao
   escreva("Isto � Um tri�ngulo ")
   se((varUm = varDois) E (varDois = varTres)) entao //Todos os lados sao iguais
      escreva("Equil�tero")
   fimse
   se((varUm <> varDois) E (varDois <> varTres) E (varUm <> varTres)) entao //Todos os lados sao diferentes
      escreva("Escaleno")
   fimse
   se((varUm = varDois) E (varDois <> varTres) OU (varUm = varTres) E (varTres <> varDois) OU (varDois = varTres) E (varUm <> varTres)) entao
      escreva("Is�sceles") //Quando apenas dois lados sao iguais
   fimse
fimse

fimalgoritmo
