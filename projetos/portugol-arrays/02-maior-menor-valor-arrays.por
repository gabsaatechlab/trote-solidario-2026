programa {
    funcao inicio() {

        inteiro numeros[10]
        inteiro maior, menor
        inteiro posMaior = 0, posMenor = 0

        // Leitura dos números
        para (inteiro i = 0; i < 10; i++) {
            escreva("Digite o ", (i + 1), "º número: ")
            leia(numeros[i])
        }

        // Inicializa com o primeiro elemento
        maior = numeros[0]
        menor = numeros[0]

        // Procura o maior e o menor
        para (inteiro i = 1; i < 10; i++) {

            se (numeros[i] > maior) {
                maior = numeros[i]
                posMaior = i
            }

            se (numeros[i] < menor) {
                menor = numeros[i]
                posMenor = i
            }

        }

        escreva("\n===== RESULTADO =====\n")
        escreva("Maior valor: ", maior, "\n")
        escreva("Posição do maior: ", posMaior, "\n")

        escreva("Menor valor: ", menor, "\n")
        escreva("Posição do menor: ", posMenor, "\n")

    }
}
