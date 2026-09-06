programa {
  funcao inicio() {
    real notas[4]
    real soma = 0.0, media

    // O laço começa no 0 e vai até o 3 (total de 4 repetições)
    para (inteiro i = 0; i < 4; i++) {
      escreva("Digite a ", (i+1), "ª nota: ")
      leia(notas[i])
      soma += notas[i]
    }

    media = soma / 4
    escreva("Média final: ", media, "\n")

    // Condicionais para classificar o resultado
    se (media >= 7.0) {
      escreva("Aprovado\n")
    } senao se (media >= 5.0) {
      escreva("Recuperação\n")
    } senao {
      escreva("Reprovado\n")
    }
  }
}