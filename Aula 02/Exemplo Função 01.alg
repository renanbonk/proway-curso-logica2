algoritmo "Exemplo Fun��o 01"

var
numero1, numero2, soma: inteiro

//procedimento: vai executar um determinado trecho de c�digo
// funcao: vai executar um determinado trecho de c�digo retornando uma informa��o

funcao somar(numero1: inteiro; numero2: inteiro): inteiro
var
resultado: inteiro

inicio
resultado:= numero1 + numero2
retorne resultado

fimfuncao

inicio
soma:= somar (4, 9)
escreval ("A soma �: ", soma)

fimalgoritmo
