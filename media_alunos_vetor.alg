algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 07/04/2015
// Se��o de Declara��es
var
notas : vetor[1..20] de real
acima, i, limite : inteiro
media, soma : real
inicio
// Se��o de Comandos
Escreva("Informe o Limite de Alunos (at� 20): ")
leia(limite)

para i de 1 ate limite faca
   escreva("Informe a Nota do aluno ", i, ": ")
   leia(notas[i])
   soma <- soma + notas[i]
fimpara

media <- soma / limite

para i de 1 ate limite faca
   se notas[i] >= media entao
      acima <- acima + 1
   fimse
fimpara
timer 60
Escreva("Aguarde.")
Escreva(".")
Escreva("..")
Escreva("...")
Escreva("....")
Escreva(".....")
Escreva("......")
Escreva(".......")
Escreva("........")
Escreva(".........")
Escreva("..........")
Escreva("...........")
Escreva("............")

escreval("")
Escreval("____________________________=_______.")
Escreval("Alunos Acima da M�dia: ",acima :6)
Escreval("M�dia dos alunos: ",media :11)
Escreval("____________________________________.")


fimalgoritmo
