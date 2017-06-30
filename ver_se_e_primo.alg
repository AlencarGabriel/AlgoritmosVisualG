algoritmo "ver_se_e_primo"
// Função :
// Autor :
// Data : 23/04/2015
// Seção de Declarações
var
numero : inteiro
inicio
// Seção de Comandos

funcao IsPrimo(num : inteiro) : logico
var
resultado, pronto :  logico
n, i : inteiro
inicio

n <- 0

para i de 2 ate num-1 faca
   se num%i = 0 entao
      n <- n + 1
   fimse
fimpara


se n > 0 entao
   resultado <- falso
senao
   resultado <- verdadeiro
fimse
retorne resultado



fimfuncao

escreva("Informe um número: ")
leia(numero)
escreval(IsPrimo(numero))
fimalgoritmo

