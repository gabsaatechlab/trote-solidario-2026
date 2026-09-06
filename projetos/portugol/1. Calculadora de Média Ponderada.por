programa
{
    funcao inicio()
    {
        real nota1, nota2, nota3, mediaFinal

        escreva("=== CALCULADORA DE MÉDIA  ===\n")

        escreva("Digite a Nota 1 (peso 2): ")
        leia(nota1)

        escreva("Digite a Nota 2 (peso 3): ")
        leia(nota2)

        escreva("Digite a Nota 3 (peso 5): ")
        leia(nota3)

        mediaFinal = ((nota1 * 2) + (nota2 * 3) + (nota3 * 5)) / (2 + 3 + 5)

        escreva("\n--- RESULTADO ---\n")
        escreva("Nota 1: ", nota1, " | Peso: 2\n")
        escreva("Nota 2: ", nota2, " | Peso: 3\n")
        escreva("Nota 3: ", nota3, " | Peso: 5\n")
        escreva("\nMédia Final: ", mediaFinal, "\n")

        se (mediaFinal >= 6.0)
        {
            escreva("APROVADO\n")
        }
        senao
        {
            escreva("REPROVADO\n")
        }
    }
}


