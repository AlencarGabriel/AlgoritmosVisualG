
algoritmo "VerTriangulo"
// Função :  Ler 3 valores e descobrir se é ou nao um triangulo
// Autor :   GABRIEL ALENCAR
// Data : 10/03/2015
// Seção de Declarações
var
varUm, varDois, varTres: real
inicio
// Seção de Comandos

escreval("Ler 3 valores e descobrir se é ou nao um triangulo")
escreva("Insira o valor do Primeiro lado:_")
leia(varUm)
escreva("Insira o valor do Segundo lado:_")
leia(varDois)
escreva("Insira o valor do Terceiro lado:_")
leia(varTres)

//formula

se((varUm >= varDois + varTres) OU (varDois >= varUm + varTres) OU (varTres >= varUm + varDois))  entao
   escreval("Isto não é um Triângulo")
senao
   escreva("Isto é Um triângulo ")
   se((varUm = varDois) E (varDois = varTres)) entao //Todos os lados sao iguais
      escreva("Equilátero")
   fimse
   se((varUm <> varDois) E (varDois <> varTres) E (varUm <> varTres)) entao //Todos os lados sao diferentes
      escreva("Escaleno")
   fimse
   se((varUm = varDois) E (varDois <> varTres) OU (varUm = varTres) E (varTres <> varDois) OU (varDois = varTres) E (varUm <> varTres)) entao
      escreva("Isósceles") //Quando apenas dois lados sao iguais
   fimse
fimse

fimalgoritmo
