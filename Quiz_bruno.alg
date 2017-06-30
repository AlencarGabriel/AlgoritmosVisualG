algoritmo "Quiz"
// Função : Trata-se de um Quiz (Jogo de perguntas e respostas) armazenado dinamicamente
// Autor : Bruno Manzoli
// Data : 24/03/2015
// Seção de Declarações
var
bd : vetor [1..10] de caracter //Base de Dados para guardar perguntas e respostas
gabarito : vetor [1..2] de inteiro //Guardar respostas
i, j, p, y : inteiro //Contadores e marcadores de posição
resp_correta, resposta, alternativa : caracter //Resposta guarda as respostas em modo jogador
aleatoria, cont, conversao, pontuacao : inteiro

inicio
// Seção de Comandos

//INSERÇÃO DE INFORMAÇÕES NA BASE DE DADOS DO QUIZ - MODO ADMINISTRADOR
p <- 1
y <- 1
para i de 1 ate 10 passo 5 faca
   Escreval("Entre com a ", p, "ª pergunta:")
   Leia(bd[i])
   Escreval("Entre com a resposta correta:")
   Leia(resp_correta)
   aleatoria <- Randi(4) + 1
   gabarito[y] <- aleatoria
   bd[i + aleatoria] <- resp_correta
   para j de 1 ate 3 faca
      cont <- cont + 1
      escreval("Entre com a ", j+1,"ª alternativa: ")
      Leia(alternativa)
      se (bd[i+j] = "") e (bd[i+j] <> resp_correta) entao
         bd[i+j] <- alternativa
      senao
         bd[i+cont+1] <- alternativa
      fimse
   fimpara
   cont <- 0
   p <- p + 1
   y <- y + 1
fimpara

//JOGO EM EXECUÇÃO - MODO JOGADOR
i <- 0
y <- 1
para i de 1 ate 10 passo 5 faca
   Escreval(bd[i])
   para j de 1 ate 4 faca
      Escreval(bd[i+j])
   fimpara

   Leia(resposta)

   se resposta = "a" entao
      conversao <- 1
   fimse
   se resposta = "b" entao
      conversao <- 2
   fimse
   se resposta = "c" entao
      conversao <- 3
   fimse
   se resposta = "d" entao
      conversao <- 4
   fimse

   se conversao = gabarito[y] entao
      pontuacao <- pontuacao + 1
   fimse

   y <- y + 1

fimpara

Escreval("Sua pontuação foi: ", pontuacao)

fimalgoritmo
