Algoritmo "exercicio24"
//  Faça um programa que leia dois números inteiros e exiba se ambos são pares
//ambos são ímpares ou se um é par e o outro é ímpar
// juntamente com o resto da divisão de cada um por 2
//(Obs: Não usar a função "Se")

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