programa {
  funcao inicio() {
    
    //Variáveis
    real distanciaPercorrida
    real combustivelGasto
    real consumoMedio

    escreva("--- Consumo de Combustível ---\n ")

    escreva("Digite a distância percorrida (km): ")
    leia(distanciaPercorrida)

    escreva("Digite o gasto do combustível (em litros): ")
    leia(combustivelGasto)

    consumoMedio = distanciaPercorrida / combustivelGasto // Declaração da variável

    escreva("--- Consumo Médio (km/litro) ---\n", consumoMedio)
    
  }
}
