algoritmo "Exercicio Funcao 01"

var
nota1, nota2, nota3, frequencia, mediaFinal: real

procedimento solicitarNota()
inicio
escreva("Digite a nota 01: ")
leia(nota1)
escreva("Digite a nota 02: ")
leia(nota2)
escreva("Digite a nota 03: ")
leia(nota3)
escreva("Digite sua frequencia: ")
leia(frequencia)
fimprocedimento

funcao calcularMedia(): real
var
resultado: real
inicio
resultado:=(nota1 +nota2+ nota3)/3
retorne resultado
fimfuncao

funcao obterStatus(media: real): caracter
var
status: caracter
inicio
se (media >= 7) e (frequencia >=75 ) entao
   status:= "APROVADO"
senao
   Status:= "REPROVADO"
fimse
retorne status
fimfuncao

inicio
solicitarNota()
mediaFinal:= calcularMedia()
escreval("A Média é: ", mediaFinal)
escreval("STATUS: ", obterStatus(mediaFinal))
fimalgoritmo
