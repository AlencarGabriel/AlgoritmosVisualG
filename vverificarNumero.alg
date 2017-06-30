algoritmo "verificarNumero"
// Função :   Verificar numeros e mostrar enre 1000 e 2000, quando dividido por 11 produzem resto igual a 5
// Autor :
// Data : 12/03/2015
// Seção de Declarações 
var
  i : inteiro
inicio
// Seção de Comandos 

   //para i de 1000 ate 2000 faca
   //    se(i%11 = 5) entao
   //       escreval(i)
   //    fimse
   //fimpara
   
   //i <- 1000
   //enquanto (i >= 1000) e (i <= 2000) faca
   //  se(i % 11 = 5) entao
   //       escreval(i)
   //   fimse
   //   i <- i + 1
   //fimenquanto
   
   i <- 1000
   repita
     se(i % 11 = 5) entao
       escreval(i)
     fimse
     i <- i +1
   ate (i = 2000)
fimalgoritmo
