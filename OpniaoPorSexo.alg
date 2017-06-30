algoritmo "OpniaoPorSexo"
// Função :
// Autor :
// Data : 12/03/2015
// Seção de Declarações 
var
   sexo, opniao : caracter
   i, conthomem, contsim, contmulhersim, contmulhernao : inteiro
inicio
// Seção de Comandos

   para i de 1 ate 10 faca
   
        escreva("Informe o seu sexo (H: Homem e M: Mulher) ")
        leia(sexo)
        Escreva("Você gostou do Produto? ")
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
   
   Escreval("Relatório: Responderam Sim: ", contsim, " | Responderam Não: ", 10 - contsim)
   Escreval("Mulheres que Responderam Sim: ", contmulhersim)
   Escreval("Porcentagem de Homens que responderam não: ", ((contsim - contmulhersim) / conthomem) * 100, "%")
fimalgoritmo

