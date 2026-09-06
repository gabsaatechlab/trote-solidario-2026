programa
{
    funcao inicio()
    {
        real horasTrabalhadas
        real valorHoras
        real salarioBruto
        real valorDesconto
        real salarioLiquido

        escreva("--- Cálculo de Salário ---\n")

        escreva("Horas trabalhadas no mês: ")
        leia(horasTrabalhadas)

        escreva("Valor por hora: R$ ")
        leia(valorHoras)

        salarioBruto = horasTrabalhadas * valorHoras // variavel = conta
        escreva("Salário bruto: R$ ", salarioBruto, "\n")

        valorDesconto = salarioBruto * 0.075 // variavel = conta
        escreva("Desconto (7,5%): R$ ", valorDesconto, "\n")

        salarioLiquido = salarioBruto - valorDesconto // variavel = conta 
        escreva("Salário líquido: R$ ", salarioLiquido, "\n")
    }
}