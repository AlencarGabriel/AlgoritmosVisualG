algoritmo "positivo_negativo"
// Função :
// Autor :
// Data : 16/04/2015
// Seção de Declarações
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
// Seção de Comandos

escreva("Informe um número Inteiro: ")
leia(nume)
resultado <- verifica(nume)
escreval(resultado)
fimalgoritmo
