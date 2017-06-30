algoritmo "semnome"
// Função :
// Autor :
// Data : 07/04/2015
// Seção de Declarações
var
notas : vetor[1..20] de real
acima, i, limite : inteiro
media, soma : real
inicio
// Seção de Comandos
Escreva("Informe o Limite de Alunos (até 20): ")
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
Escreval("Alunos Acima da Média: ",acima :6)
Escreval("Média dos alunos: ",media :11)
Escreval("____________________________________.")


fimalgoritmo
