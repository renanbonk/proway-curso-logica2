algoritmo "Exercicio Função 02"
// Ex. 2:
// Criar um procedimento para solicitar 5 números (armazenando em um vetor)
// Criar uma função para obter a soma dos números
// Criar uma função para obter o menor número
// Criar uma função para obter o maior número
// Criar uma função para obter a quantidade de números pares

var
numeros: vetor[0..4] de real

procedimento solcicitarNumeros()
var:
i: inteiro

inicio
para i de 0 ate 4 faca
   escreva("Digite o numero: ")
   leia(numros[i])
fimpara
fimprocedimento

funcao obterSomaNumeros()
var
soma, i: real

inicio
para i de 0 ate 4 faca
   retorne:= soma + numero[i]
fimpara
retorno resultado
fimfuncao

inicio
solcicitarNumeros()
escreval("A Soma é: ", obterSomaNumeros())

fimalgoritmo
