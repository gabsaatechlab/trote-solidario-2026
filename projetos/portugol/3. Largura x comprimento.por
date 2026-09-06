programa
{
    funcao inicio()
    {
        real largura
        real comprimento 
        real area
        real perimetro

        escreva("--- Calculadora de Área e Perímetro ---\n")

        escreva("Digite a largura do terreno (m): ")
        leia(largura)

        escreva("Digite o comprimento do terreno (m): ")
        leia(comprimento)

        area = largura * comprimento
        perimetro = 2 * (largura + comprimento)

        escreva("\n--- Resultados ---\n")
        escreva("Área: ", area, " m²\n")
        escreva("Perímetro: ", perimetro, " m\n")
    }
}