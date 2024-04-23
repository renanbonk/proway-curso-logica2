algoritmo "Exemplo Função 03"
var
lado1, lado2, lado3: inteiro

procedimento solicitarLados()
inicio
escreva("Digite o valor do lado1: ")
leia(lado1)
escreva("Digite o valor do lado2: ")
leia(lado2)
escreva("Digite o valor do lado3: ")
leia(lado3)
fimprocedimento

funcao ehTrianguloEquilatero(): logico
inicio
se((lado1=lado2) e (lado2= lado3))entao
   retorne verdadeiro
senao
   retorne falso
fimse
fimfuncao

funcao ehTrianguloIsosceles():logico
inicio
se ((lado1=lado2) e (lado2<>lado3)) ou ((lado1=lado3) e (lado1<> lado2)) ou ((lado2=lado3) e (lado1<>lado2)) entao
   retorne verdadeiro
senao
   retorne falso
fimse
fimfuncao

funcao obterTipoTriangulo(): caracter
var
tipo: caracter
inicio
se ehTrianguloEquilatero()= verdadeiro entao
   tipo := "Triangulo Equilatero"
senao
   se ehTrianguloIsosceles()= verdadeiro entao
      tipo:= "Triangulo Isosceles"
   senao
      tipo:= "triangulo Escaleno"
   fimse
fimse
retorne tipo
fimfuncao

inicio
solicitarLados()
escreval("O tipo do triangulo: ", obtertipoTriangulo())

fimalgoritmo
