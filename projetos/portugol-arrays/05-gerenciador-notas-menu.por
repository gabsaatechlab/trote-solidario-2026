programa {
  funcao inicio() {
    real notas[30]
    inteiro opcao = 0, qtd = 0, pos
    real nota, soma, media, maior, menor
    inteiro aprovados

    // Mantém o menu rodando até escolher 7
    enquanto (opcao != 7) {
      escreva("\n--- GERENCIADOR DE NOTAS ---\n")
      escreva("1. Inserir nota\n")
      escreva("2. Listar todas as notas\n")
      escreva("3. Calcular média\n")
      escreva("4. Maior e menor nota\n")
      escreva("5. Contar aprovados (>= 7.0)\n")
      escreva("6. Buscar nota por posição\n")
      escreva("7. Sair\n")
      escreva("Escolha uma opção: ")
      leia(opcao)

      escolha (opcao) {
        caso 1:
          se (qtd < 30) {
            escreva("Digite a nota (0 a 10): ")
            leia(nota)
            se (nota >= 0.0 e nota <= 10.0) {
              notas[qtd] = nota
              qtd++ // Aumenta o contador de notas salvas
              escreva("Nota inserida com sucesso!\n")
            } senao {
              escreva("Erro: Nota inválida!\n")
            }
          } senao {
            escreva("Atenção: Limite de 30 notas atingido.\n")
          }
          pare

        caso 2:
          se (qtd == 0) {
            escreva("Nenhuma nota cadastrada.\n")
          } senao {
            para (inteiro i = 0; i < qtd; i++) {
              escreva("Nota [", (i+1), "]: ", notas[i], "\n")
            }
          }
          pare

        caso 3:
          se (qtd == 0) {
            escreva("Nenhuma nota cadastrada.\n")
          } senao {
            soma = 0.0
            para (inteiro i = 0; i < qtd; i++) {
              soma = soma + notas[i]
            }
            media = soma / qtd
            escreva("Média de todas as notas: ", media, "\n")
          }
          pare

        caso 4:
          se (qtd == 0) {
            escreva("Nenhuma nota cadastrada.\n")
          } senao {
            maior = notas[0]
            menor = notas[0]
            para (inteiro i = 1; i < qtd; i++) {
              se (notas[i] > maior) {
                maior = notas[i]
              }
              se (notas[i] < menor) {
                menor = notas[i]
              }
            }
            escreva("Maior nota: ", maior, "\n")
            escreva("Menor nota: ", menor, "\n")
          }
          pare

        caso 5:
          se (qtd == 0) {
            escreva("Nenhuma nota cadastrada.\n")
          } senao {
            aprovados = 0
            para (inteiro i = 0; i < qtd; i++) {
              se (notas[i] >= 7.0) {
                aprovados++
              }
            }
            escreva("Total de alunos aprovados: ", aprovados, "\n")
          }
          pare

        caso 6:
          escreva("Digite a posição da nota que deseja buscar (1 a ", qtd, "): ")
          leia(pos)
          se (pos >= 1 e pos <= qtd) {
            // Acesso direto na gaveta usando pos-1 porque o usuário digita em base 1
            escreva("A nota na posição ", pos, " é: ", notas[pos-1], "\n")
          } senao {
            escreva("Erro: Posição inválida ou não cadastrada.\n")
          }
          pare

        caso 7:
          escreva("Saindo do gerenciador...\n")
          pare

        caso contrario:
          escreva("Erro: Opção inválida! Tente novamente.\n")
          pare
      }
    }
  }
}