programa
{
    inclua biblioteca Matematica

    funcao inicio()
    {
        // ------- Declaração de variáveis ---------
        cadeia nomeCliente
        inteiro qtdAzulejosInt, qtdRodapesInt

        real larg1, alt1, larg2, alt2, larg3, alt3, larg4, alt4
        real precoAzulejo, precoRodape, precoHora, percChuva

        real area1, area2, area3, area4, areaTotal
        real perim1, perim2, perim3, perim4, perimetroTotal

        real qtdAzulejos, qtdRodapes
        real custoAzulejos, custoRodapes
        real horasTrabalho, custoMaoDeObra
        real acrescimoChuva

        real subtotal, totalComAcrescimo, parcela, valorAVista

        // ---- Entrada de dados ------
        escreva("--- ORÇAMENTO DE REFORMA ---\n")

        escreva("Nome do cliente: ")
        leia(nomeCliente)

        escreva("\n-- Parede 1 --\n")
        escreva("Largura (m): ")
        leia(larg1)
        escreva("Altura  (m): ")
        leia(alt1)

        escreva("\n-- Parede 2 --\n")
        escreva("Largura (m): ")
        leia(larg2)
        escreva("Altura  (m): ")
        leia(alt2)

        escreva("\n-- Parede 3 --\n")
        escreva("Largura (m): ")
        leia(larg3)
        escreva("Altura  (m): ")
        leia(alt3)

        escreva("\n-- Parede 4 --\n")
        escreva("Largura (m): ")
        leia(larg4)
        escreva("Altura  (m): ")
        leia(alt4)

        escreva("\n-- Preços --\n")
        escreva("Preço do m² do azulejo (R$): ")
        leia(precoAzulejo)
        escreva("Preço do metro linear do rodapé (R$): ")
        leia(precoRodape)
        escreva("Preço da hora do pedreiro (R$): ")
        leia(precoHora)
        escreva("Percentual de acréscimo para dias chuvosos (%): ")
        leia(percChuva)

        // --- Cálculo das áreas ---
        area1 = larg1 * alt1
        area2 = larg2 * alt2
        area3 = larg3 * alt3
        area4 = larg4 * alt4
        areaTotal = area1 + area2 + area3 + area4

        // --- Cálculo dos perímetros ----
        perim1 = 2.0 * (larg1 + alt1)
        perim2 = 2.0 * (larg2 + alt2)
        perim3 = 2.0 * (larg3 + alt3)
        perim4 = 2.0 * (larg4 + alt4)
        perimetroTotal = perim1 + perim2 + perim3 + perim4

        // ---- Quantidade de azulejos ----
        // (areaTotal × 1,10) ÷ 0,36 ---- cada azulejo = 0,36 m², +10% de perda
        qtdAzulejos    = ((areaTotal / 0.36) * 1.10) + 0.4999
        qtdAzulejosInt = Matematica.arredondar(qtdAzulejos, 0)

        // ---- Quantidade de rodapés ----
        // (perimetroTotal × 1,05) ÷ 2,5 ? cada peça = 2,5 m, +5% de perda
        qtdRodapes    = ((perimetroTotal / 2.5) * 1.05) + 0.4999
        qtdRodapesInt = Matematica.arredondar(qtdRodapes, 0)

        // ---- Cálculo dos custos ----
        custoAzulejos  = qtdAzulejosInt * precoAzulejo * 0.36
        custoRodapes   = qtdRodapesInt  * precoRodape  * 2.5

        horasTrabalho  = areaTotal * 2.5
        custoMaoDeObra = horasTrabalho * precoHora

        acrescimoChuva = (custoMaoDeObra * percChuva) / 100.0

        // ---- Cálculo Total ----
        subtotal          = custoAzulejos + custoRodapes + custoMaoDeObra
        totalComAcrescimo = subtotal + acrescimoChuva
        parcela           = totalComAcrescimo / 5.0
        valorAVista       = totalComAcrescimo * 0.93

        // --- Resumo completo do orçamento do cliente ---
        escreva("\n")
        escreva("-------------------------------------------------------\n")
        escreva("        RESUMO DO ORÇAMENTO\n")
        escreva("-------------------------------------------------------\n")
        escreva("Cliente          : ", nomeCliente, "\n")
        escreva("Data do orçamento: 15/03/2026\n")
        escreva("--------------------------------------------\n")
        escreva("Área total a revestir  : ", areaTotal,      " m²\n")
        escreva("Perímetro total        : ", perimetroTotal, " m\n")
        escreva("--------------------------------------------\n")
        escreva("Qtd. de azulejos       : ", qtdAzulejosInt, " unidades\n")
        escreva("Qtd. de rodapés        : ", qtdRodapesInt,  " peças\n")
        escreva("--------------------------------------------\n")
        escreva("Custo com azulejos     : R$ ", custoAzulejos,  "\n")
        escreva("Custo com rodapés      : R$ ", custoRodapes,   "\n")
        escreva("Horas de trabalho      : ",    horasTrabalho,  " h\n")
        escreva("Custo com mão de obra  : R$ ", custoMaoDeObra, "\n")
        escreva("Acréscimo (chuva)      : R$ ", acrescimoChuva, "\n")
        escreva("--------------------------------------------\n")
        escreva("Subtotal               : R$ ", subtotal,          "\n")
        escreva("Total com acréscimo    : R$ ", totalComAcrescimo,  "\n")
        escreva("--------------------------------------------\n")
        escreva("Parcelado (5x)         : R$ ", parcela,     " / parcela\n")
        escreva("À vista (7% desconto)  : R$ ", valorAVista, "\n")
        escreva("============================================\n")
    }
}