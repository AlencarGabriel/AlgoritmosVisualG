algoritmo "par_ou_impar"
// Fun��o :
// Autor :
// Data : 16/04/2015
// Se��o de Declara��es
var
nume : inteiro
resultado : literal

funcao verifica(numero : inteiro) : literal
var
inicio
   se numero % 2 = 0 entao
      retorne "Par"
   senao
      retorne "�mpar"
   fimse
fimfuncao

inicio
// Se��o de Comandos

escreva("Informe um n�mero Inteiro: ")
leia(nume)
resultado <- verifica(nume)
escreval(resultado)
fimalgoritmo
