algoritmo "OpniaoPorSexo"
// Fun��o :
// Autor :
// Data : 12/03/2015
// Se��o de Declara��es 
var
   sexo, opniao : caracter
   i, conthomem, contsim, contmulhersim, contmulhernao : inteiro
inicio
// Se��o de Comandos

   para i de 1 ate 10 faca
   
        escreva("Informe o seu sexo (H: Homem e M: Mulher) ")
        leia(sexo)
        Escreva("Voc� gostou do Produto? ")
        leia(opniao)
        
        se (sexo = "h") entao
           conthomem <- conthomem + 1
        fimse
        se (opniao = "s") entao
            contsim <- contsim + 1
        fimse
        se(sexo = "m") E (opniao = "s") entao
             contmulhersim <- contmulhersim + 1
        fimse
        
        se(sexo = "m") E (opniao = "n") entao
             contmulhernao <- contmulhernao + 1
        fimse

   fimpara
   
   Escreval("Relat�rio: Responderam Sim: ", contsim, " | Responderam N�o: ", 10 - contsim)
   Escreval("Mulheres que Responderam Sim: ", contmulhersim)
   Escreval("Porcentagem de Homens que responderam n�o: ", ((contsim - contmulhersim) / conthomem) * 100, "%")
fimalgoritmo

