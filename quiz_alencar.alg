algoritmo "semnome"
// Função :
// Autor :
// Data : 24/03/2015
// Seção de Declarações 
var
    varPergunta : vetor[1..10] de literal
    varGabarito : vetor[0..9] de inteiro
    varUser, i, ii, iii, al : inteiro
inicio
// Seção de Comandos 

   //Perguntar se é Jogador ou ADM
   //SE ADMIN alimentar perguntas
   //respostas aleatorias
   //cada resosta certa acumula 1 ponto

      i <- 0
      ii <- 0
      enquanto i <= 10 faca
           Escreva("Escreva a Pergunta: ")
           leia(varPergunta[i+1])
               Escreva("Escreva a Resposta da Pergunta: ")
               leia(varPergunta[i+2])
               varGabarito[iii] <- i+2
               i <- i+3
               para ii de i+1 ate i + 2  faca
                    Escreva("Escreva a outra alternativa da Pergunta: ")
                    leia(varPergunta[ii])
               fimpara
               i <- i + 2
               iii <- iii + 1
      fimenquanto

   
   //Hora de Jogar
   
   i <- 1

   enquanto i <= 10 faca
        Escreval(varPergunta[i])// mostra pergunta
       // mostra respostas e sorteia
       //(i+1)
       
              enquanto al < i+1  faca
                       al <- Randi(i+4)
              fimenquanto
             escreval("A - ", varPergunta[al])
             escreval("B - ", varPergunta[al])
             escreval("C - ", varPergunta[al])
             escreval("D - ", varPergunta[al])

            i <- i + 4
   fimenquanto

fimalgoritmo

