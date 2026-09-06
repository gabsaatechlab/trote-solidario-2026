programa {
  funcao inicio() {
    cadeia nomes[15]
    cadeia busca
    logico encontrado = falso

    para (inteiro i = 0; i < 15; i++) {
      escreva("Digite o nome do aluno ", (i+1), ": ")
      leia(nomes[i])
    }

    escreva("\nDigite o nome que deseja buscar: ")
    leia(busca)

    // Busca
    para (inteiro i = 0; i < 15; i++) {
      se (nomes[i] == busca) {

        escreva("Encontrado na posição ", (i + 1), "\n")
        encontrado = verdadeiro
        pare
      }
    }

    se (nao encontrado) {
      escreva("Não encontrado\n")
    }
  }
}
