   algoritmo "CalculadoraTiposDeConversao"
   // Função :
   // Autor :  GABRIEL ALENCAR
   // Data : 16/03/2015
   // Seção de Declarações
   var
   varOpcao, i, varDecimal, varEscolha, varResto, caracteres : inteiro
   //varResultado, varQociente : real
   //varBinario: vetor [0..8] de inteiro
   tabela: vetor[0..15] de caracter
   tabela2: vetor[0..1] de caracter
   varBinario: vetor [0..8] de inteiro
   hexad, binario, valor, varValor : caracter
   varHexa, varResultado : real

   inicio
   // Seção de Comandos

   //Tabela de Hexadecimais
   tabela[0]<- "0"
   tabela[1]<- "1"
   tabela[2]<- "2"
   tabela[3]<- "3"
   tabela[4]<- "4"
   tabela[5]<- "5"
   tabela[6]<- "6"
   tabela[7]<- "7"
   tabela[8]<- "8"
   tabela[9]<- "9"
   tabela[10]<- "A"
   tabela[11]<- "B"
   tabela[12]<- "C"
   tabela[13]<- "D"
   tabela[14]<- "E"
   tabela[15]<- "F"
   
   tabela2[0]<- "0"
   tabela2[1]<- "1"
   //Procedimentos de conversao

   procedimento binToDecimal() // binario para decimal
   inicio
   Escreval("Insira a Sequência Bit-a-Bit de um Octeto. (Ex.: 1 ou 0)")
   Escreval("**Caso esta seqência tenha menos de 8 Bits, insira 0 antes da sequência desejada**")
   //Area do Calculo Binário x Decimal
   i <- 0
   para i de 0 ate 7 faca
      leia(varBinario[i])
   fimpara

   varResultado <- (128 * varBinario[0]) + (64 * varBinario[1]) + (32 * varBinario[2]) + (16 * varBinario[3]) + (8 * varBinario[4]) + (4 * varBinario[5]) + (2 * varBinario[6]) + (1 * varBinario[7])
   Escreval("A conversão de: ", varBinario[0],varBinario[1],varBinario[2],varBinario[3],varBinario[4],varBinario[5],varBinario[6],varBinario[7]," para Decimal é: ", varResultado)

   Iniciar()
   fimprocedimento

   procedimento decToBinario() // decimal para binario
   inicio
    varResto <- 0
    binario <- ""
    varDecimal <- 0
   Escreval("Insira o Número Decimal.")
   leia(varDecimal)
   //varQociente <- varDecimal
   varEscolha <-  varDecimal
   //Area do Calculo Decimal X Hexadecimal
   //enquanto (varDecimal >= 0) e (i < 9) faca
   //   varBinario[i] <- 0
      //Desenvolver logica para ver se o  numero é par
   //   se varDecimal mod 2 = 0 entao
   //      se  varQociente = 2 entao
   //         varBinario[i] <- 0
   //         varBinario[i + 1] <- 1
   //         i <- 9
   //      senao
   //         varQociente <- varQociente / 2
   //         varDecimal <- int(varQociente)
   //      fimse
   //   senao
   //      varQociente <- ((varQociente + 1) / 2) - 1
   //      varBinario[i] <- 1
   //      varDecimal <- int(varQociente)
   //   fimse
   
   // Para resultados inteiros, usa-se variaveis inteiras
   enquanto varDecimal>0 faca
         varResto <- varDecimal mod 2
         varDecimal <- varDecimal \ 2 // divisao inteira
         binario <- tabela2[varResto]+binario
      fimenquanto

   Escreval("A conversão de: ", varEscolha ," para Binário é: ", binario)
   Iniciar()
   fimprocedimento

   procedimento decToHex() // decimal para hexadecimal
   inicio
    varResto <- 0
    hexad <- ""
    varDecimal <- 0
   Escreval("Insira o Número Decimal.")
   leia(varDecimal)
   varEscolha <- varDecimal
      enquanto varDecimal>0 faca
         varResto <- (varDecimal mod 16)
         varDecimal <- (varDecimal \ 16)  // divisao inteira
         hexad <- tabela[varResto]+hexad
      fimenquanto
   Escreval("A conversão de: ", varEscolha ," para Hexadecimal é: ", hexad )
   Iniciar()
   fimprocedimento
   
   procedimento hexToDec() //hexadecimal para decimal
   inicio
    hexad <- ""
    varDecimal <- 0
    varHexa <- 0
    varValor <- ""
   Escreval("Insira a Quantidade de Caracteres que há no Hexadecimal")
   leia(caracteres)
   Escreval("Insira a Sequência Caractere-por-Caractere do Hexadecimal (Ex.: 3 [Enter] a [Enter] 4 [Enter] = [3A4])")
   //Area do Calculo Hexadecimal x Decimal
   i <- caracteres
   para i de caracteres  ate 1 passo -1 faca
      leia(valor)
      varValor <- varValor + valor
      se (valor = "0") ou (valor = "1")ou (valor = "2")ou (valor = "3")ou (valor = "4")ou (valor = "5")ou (valor = "6")ou (valor = "7")ou (valor = "8")ou (valor = "9") entao
       varHexa <- caracpnum(valor)*(16^(i-1)) + varHexa // caracpnum converte caractere para numero
      senao
       escolha valor
           caso "a"
               varHexa <- 10*16^(i-1) + varHexa
           caso "b"
               varHexa <- 11*16^(i-1) + varHexa
           caso "c"
               varHexa <- 12*16^(i-1) + varHexa
           caso "d"
               varHexa <- 13*16^(i-1) + varHexa
           caso "e"
               varHexa <- 14*16^(i-1) + varHexa
           caso "f"
               varHexa <- 15*16^(i-1) + varHexa
       fimescolha
      fimse

   fimpara


   Escreval("A conversão de: ", varValor, " para Decimal é: ", varHexa)
   Iniciar()
   fimprocedimento

   //Procedimento de Inicio do Programa
   procedimento Iniciar()
   inicio

   Escreval("")
   Escreval("**********************************")
   //Opção de Escolha
   Escreval("1- Binária -> Decimal")
   Escreval("2- Decimal -> Binária")
   Escreval("3- Decimal -> Hexadecimal")
   Escreval("4- Hexadecimal -> Decimal")
   Escreval("Escolha o Tipo de Conversão:")
   leia(varOpcao)
   //Validação da opção
   Escolha varOpcao
   caso 1
      binToDecimal()
   caso 2
      decToBinario()
   caso 3
      decToHex()
   caso 4
      hexToDec()
   outrocaso
      Escreval("Escolha uma opção")
      iniciar()
   fimescolha
   fimprocedimento

   Iniciar()
   fimalgoritmo
