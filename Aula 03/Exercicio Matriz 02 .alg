algoritmo "Exercicio Matriz 02"
// Ex2: Criar uma matriz de 3x4 para armazenar números da sorte (utilizar dois paras (i,j))
//      - Solicitar os números armazenando na matriz
//      - Somar todos os números
//      - Apresentar a média dos números
//      - Somar todos os números da 2ª linha
//      - Somar todos os números da 1ª coluna
//      - Somar os números da diagonal principal
//      - Somar os números da diagonal secundária
var
numeros: vetor [0..3, 0..3] de inteiro
soma, somaLinha, somaColuna, somaDiagonalPrincipal, somaDiagonalsecundaria, i, j: inteiro
media: real

inicio
para i de 0 ate 3 faca
   para j de 0 ate 3 faca
      escreva ("Digite o numero da sorte: ")
      leia (numeros[i,j])
   fimpara
fimpara

para i de 0 ate 3 faca
   para j de 0 ate 3 faca
      soma := soma+ numeros[i,j]
   fimpara
fimpara

escreval ("Soma: ", soma)
media := soma/6
escreval("Media: ", media)

para i de 0 ate 3 faca
   para j de 0 ate 3 faca
      se i = 2 entao
         somaLinha:= somaLinha + numeros[i,j]
      fimse
   fimpara
fimpara

escreval ("Soma Linha 02 : ", somaLinha)

para i de 0 ate 3 faca
   para j de 0 ate 3 faca
      se j = 1 entao
         somaColuna:= somaColuna + numeros[i,j]
      fimse
   fimpara
fimpara

escreval ("Soma coluna 01 : ", somacoluna)

para i de 0 ate 3 faca
   para j de 0 ate 3 faca
      se i=j entao
         somaDiagonalPrincipal := somaDiagonalPrincipal + numeros[i,j]
      fimse
   fimpara
fimpara
escreval ("soma Diagonal Principal : ", somaDiagonalPrincipal)

para i de 0 ate 3 faca
   para j de 0 ate 3 faca
      se i+j=3 entao
         somaDiagonalsecundaria := somaDiagonalsecundaria + numeros[i,j]
      fimse
   fimpara
fimpara
escreval ("soma Diagonal secundaria : ", somaDiagonalsecundaria)

fimalgoritmo
