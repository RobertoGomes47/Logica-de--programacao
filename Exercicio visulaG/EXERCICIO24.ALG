Algoritmo "exercicio24"
//  Fa�a um programa que leia dois n�meros inteiros e exiba se ambos s�o pares
//ambos s�o �mpares ou se um � par e o outro � �mpar
// juntamente com o resto da divis�o de cada um por 2
//(Obs: N�o usar a fun��o "Se")

Var
    numero1,numero2, primeironumero:inteiro
    segundonumero:inteiro


Inicio
  escreva(" digite o primeiro numero: ")
   leia (numero1)
   escreva(" digite o segundo numero: ")
   leia (numero2)
   primeironumero <- numero1 mod 2
   segundonumero <- numero2 mod 2
   escreva("O resultado do " , primeironumero)
   escreva("O resultado do " , segundonumero)
   escreva("Caso o resto seja  '0' e par , se o numero for o resto '1' e impar")

Fimalgoritmo