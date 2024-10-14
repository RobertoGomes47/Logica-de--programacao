Algoritmo "Desafio24"
// [DESAFIO] Escreva um programa para calcular a redução do tempo de vida de um fumante
// Pergunte a quantidade de cigarros fumados por dias e quantos anos ele já fumou
//Considere que um fumante perde 10 min de vida a cada cigarro.
// Calcule quantos dias de vida um fumante perderá e exiba o total em dias.

Var   nome: caracter
    cigarros_por_dia, anos_fumando, total_cigarros: inteiro
    minutos_perdidos_por_cigarro, total_minutos_perdidos, minutos_por_dia: inteiro
    dias_perdidos: real


Inicio
    // Inicializando a constante de minutos perdidos por cigarro
    minutos_perdidos_por_cigarro <- 10
    minutos_por_dia <- 24 * 60
    
     // Solicitando a entrada do usuário
    escreva("Digite seu nome: ")
    leia(nome)
    escreva("Quantos cigarros você fuma por dia? ")
    leia(cigarros_por_dia)
    escreva("Há quantos anos você fuma? ")
    leia(anos_fumando)
    
    // Calculando o número total de cigarros fumados
    total_cigarros <- cigarros_por_dia * 365 * anos_fumando
    
     // Calculando o total de minutos perdidos
    total_minutos_perdidos <- total_cigarros * minutos_perdidos_por_cigarro
    
     // Convertendo minutos para dias
    dias_perdidos <- total_minutos_perdidos / minutos_por_dia
    
      // Exibindo o resultado
    escreva(nome," você perderá aproximadamente ", dias_perdidos, " dias de vida devido ao fumo.")
    
fimalgoritmo


Fimalgoritmo