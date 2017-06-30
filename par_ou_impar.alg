algoritmo "par_ou_impar"
// Função :
// Autor :
// Data : 16/04/2015
// Seção de Declarações
var
nume : inteiro
resultado : literal

funcao verifica(numero : inteiro) : literal
var
inicio
   se numero % 2 = 0 entao
      retorne "Par"
   senao
      retorne "Ímpar"
   fimse
fimfuncao

inicio
// Seção de Comandos

escreva("Informe um número Inteiro: ")
leia(nume)
resultado <- verifica(nume)
escreval(resultado)
fimalgoritmo
