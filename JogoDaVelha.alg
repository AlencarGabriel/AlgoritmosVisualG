algoritmo "Jogo da Velha"
// Autor : Alencar Gabriel
// Data : 24/04/2016
var
null, Denovo_ : caracter
A : vetor[1..3,1..3] de caracter
AlguemGanhou, Denovo : logico

procedimento Inicia
inicio

A[1,1] <- "_"
A[1,2] <- "_"
A[1,3] <- "_"
A[2,1] <- "_"
A[2,2] <- "_"
A[2,3] <- "_"
A[3,1] <- "_"
A[3,2] <- "_"
A[3,3] <- "_"

Escreval("Jogo da Velha em VisualG")
Escreval("Pressione ENTER para continuar")
leia(null)
limpatela
Escreval("O Jogo Segue essa Estrutura: ")
Escreval("Lembra de Matrizes? Pois bem, você deverá sempre informar a Linha e")
Escreval("Coluna Correspondentes. Ex.: 1,2 -> Linha 1 e Coluna 2")
MostraGrade

fimprocedimento

procedimento MostraGrade
inicio

Escreval("                           ")
Escreval("                           ")
Escreval("                               1     2     3             ")
Escreval("                            +-----+-----+-----+")
Escreval("                          1 |  ",A[1,1],"  |  ",A[1,2],"  |  ",A[1,3],"  |")
Escreval("                            |-----+-----+-----|")
Escreval("                          2 |  ",A[2,1],"  |  ",A[2,2],"  |  ",A[2,3],"  |")
Escreval("                            |-----+-----+-----|")
Escreval("                          3 |  ",A[3,1],"  |  ",A[3,2],"  |  ",A[3,3],"  |")
Escreval("                            +-----+-----+-----+")
Escreval("                          ")
Escreval("                          ")

fimprocedimento

procedimento Comecar
var
I : inteiro
inicio

para I de 1 ate 9 faca
   se VerificaGanhador entao
      interrompa
   fimse
   Jogar(I mod 2)
   //Verifica no final, pois o jgador pode ganhar no ultimo passo
   se VerificaGanhador entao
      interrompa
   fimse
fimpara

se nao(AlguemGanhou) entao
   Escreval("Infelizmente, deu Velha!")
fimse

fimprocedimento

procedimento Ganhou(Marcador : caracter)
var
Ganhador : inteiro
inicio

escolha Marcador
caso "o"
   Ganhador <- 1
caso "x"
   Ganhador <- 2
outrocaso
   Ganhador <- -1
fimescolha

se Ganhador <> -1 entao
   escreval("Parabéns Jogador ", Ganhador, ", você Venceu!")
   AlguemGanhou := verdadeiro;
fimse

fimprocedimento

funcao VerificaGanhador() : logico
var
I, J : inteiro
Result : logico
inicio

//Verifica Linha
para I de 1 ate 3 faca
   se (A[I,1] = A[I,2]) E (A[I,2] = A[I,3]) E (A[I,2] <> "_")  entao
      Ganhou(A[I,2])
      Result := verdadeiro
      interrompa
   senao
      Result := falso
   fimse
fimpara

//Verifica Coluna, somente caso o PARA acima nao tenha encontrado ganhador
se Result <> verdadeiro entao
   para I de 1 ate 3 faca
      se (A[1,I] = A[2,I]) E (A[2,I] = A[3,I]) E (A[2,I] <> "_")  entao
         Ganhou(A[2,I])
         Result := verdadeiro
         interrompa
      senao
         Result := falso
      fimse
   fimpara
fimse

//Verifica Diagonal Principal, somente caso o PARA acima nao tenha encontrado ganhador
//Nao precisa varrer Linhas e Colunas
se Result <> verdadeiro entao
   se (A[1,1] = A[2,2]) E (A[2,2] = A[3,3]) E (A[2,2] <> "_")  entao
      Ganhou(A[2,2])
      Result := verdadeiro
      interrompa
   senao
      Result := falso
   fimse
fimse

//Verifica Diagonal Secundária, somente caso o PARA acima nao tenha encontrado ganhador
//Nao precisa varrer Linhas e Colunas
//Formula = I == (NCLUNAS - (J - 1))
se Result <> verdadeiro entao
   se (A[3,1] = A[2,2]) E (A[2,2] = A[1,3]) E (A[2,2] <> "_")  entao
      Ganhou(A[2,2])
      Result := verdadeiro
      interrompa
   senao
      Result := falso
   fimse
fimse

retorne Result

fimfuncao

procedimento Jogar(Valor : inteiro)
var
Jog, Marcador : literal
Posicao : literal
P : vetor[1..2] de inteiro
Continua : logico
inicio

P[1] := -1;
P[1] := -1;

se Valor = 1 entao
   Marcador <- "o"
   Jog <- "1"
senao
   Marcador <- "x"
   Jog <- "2"
fimse

repita
   Posicao := LerPosicao(Jog)
   P[1] := caracpnum(copia(Posicao, 1, 1))
   P[2] := caracpnum(copia(Posicao, 3, 1))

   se A[P[1], P[2]] <> "_" entao
      ExibeErro("Posição já preenchida!")
      Continua := falso
   senao
      A[P[1], P[2]] := Marcador
      limpatela
      MostraGrade
      Continua := verdadeiro
   fimse
ate Continua

fimprocedimento

funcao LerPosicao(Jog : literal) : literal
var
Posicao : literal
inicio

escreva("Informe a Posição Jogador ",Jog, ": ")
leia(Posicao)
retorne Posicao

fimfuncao

procedimento ExibeErro(Erro : literal)
inicio

escreval("--------- Erro ---------")
escreval(Erro)
escreval()

fimprocedimento

inicio

//Inicia o Jogo
Denovo := verdadeiro
enquanto Denovo faca
   Inicia
   Comecar
   escreval
   escreva("Deseja jogar Novamente? (sim ou nao) ")
   leia(Denovo_)
   escolha Denovo_
   caso "sim"
      Denovo := verdadeiro
   caso "nao"
      Denovo := falso
   outrocaso
      Denovo := falso
   fimescolha
fimenquanto

fimalgoritmo
