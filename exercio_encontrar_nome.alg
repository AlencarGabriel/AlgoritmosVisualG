algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 07/04/2015
// Se��o de Declara��es
var
nomes : vetor[1..10] de literal
i, ii, iii : inteiro
nome : literal
achou, prossiga : logico
inicio
// Se��o de Comandos

funcao verifica (i : inteiro; nomeb : literal): logico
inicio
ii <- 1
enquanto ii >= 1  faca
   para ii de i- 1 ate 1 passo -1 faca
      se nomes[ii] = nomes[i] entao
         escreval("Nome Repetido n�o pode meu amigo! :(")
         escreva("Informe outro Nome: ")
         leia(nomes[i])
         prossiga <- verifica(i,nomes[i])
      fimse
   fimpara
fimenquanto
retorne verdadeiro
fimfuncao

para i de 1 ate 10 faca
   escreva("Informe o ",i," nome: ")
   leia(nomes[i])
   //VERIFICA�A� SE O NUMERO ESTA SE REPETINDO
   se i <> 1 entao
   prossiga <- falso
      enquanto prossiga <> verdadeiro faca
          prossiga <- verifica(i,nomes[i])
      fimenquanto

   fimse


fimpara

escreva("Informe o Nome a Buscar -> ")
leia(nome)
para iii de 1 ate 10 faca
   se(nomes[iii] = nome) entao
      achou <- verdadeiro
   fimse
fimpara

se(achou = verdadeiro) entao
   escreval("Achei! :D")
senao
   escreval("N�o Achei! :(")
fimse
fimalgoritmo
