programa {
  funcao inicio() {
    inteiro numeros[20]
    inteiro n
    inteiro pares = 0, impares = 0, positivos = 0, negativos = 0, zeros = 0

    // Repete a pergunta
    faca {
      escreva("Quantos números deseja digitar? (1 a 20): ")
      leia(n)
    } enquanto (n < 1 ou n > 20)

    // Um único laço para ler e classificar
    para (inteiro i = 0; i < n; i++) {
      escreva("Digite o ", (i+1), "º número: ")
      leia(numeros[i])

      // Se o resto da divisão por 2 for zero, é par
      se (numeros[i] % 2 == 0) {
        pares++
      } senao {
        impares++
      }

      // Classifica em positivo, negativo ou zero
      se (numeros[i] > 0) {
        positivos++
      } senao se (numeros[i] < 0) {
        negativos++
      } senao {
        zeros++
      }
    }

    escreva("\n--- RESULTADOS ---\n")
    escreva("Pares: ", pares, "\n")
    escreva("Ímpares: ", impares, "\n")
    escreva("Positivos: ", positivos, "\n")
    escreva("Negativos: ", negativos, "\n")
    escreva("Zeros: ", zeros, "\n")
  }
}
