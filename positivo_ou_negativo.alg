algoritmo "positivo_negativo"
// Fun��o :
// Autor :
// Data : 16/04/2015
// Se��o de Declara��es
var
nume : inteiro
resultado : logico

funcao verifica(numero : inteiro) : logico
var
inicio
   se numero >= 0 entao
      retorne verdadeiro
   senao
      retorne falso
   fimse
fimfuncao

inicio
// Se��o de Comandos

escreva("Informe um n�mero Inteiro: ")
leia(nume)
resultado <- verifica(nume)
escreval(resultado)
fimalgoritmo
