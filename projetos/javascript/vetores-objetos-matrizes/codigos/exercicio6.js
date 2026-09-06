/* Exercício 6
   Conte quantos produtos estão com estoque abaixo de 5 unidades. */

let produtos = [
  { nome: "Teclado mecânico", preco: 250.90, estoque: 12 },
  { nome: "Mouse gamer",      preco: 120.00, estoque: 3  },
  { nome: "Monitor 24\"",     preco: 899.99, estoque: 7  },
  { nome: "Headset",          preco: 199.50, estoque: 0  }
];

let contadorEstoqueBaixo = 0;
for (let i = 0; i < produtos.length; i++) {
  if (produtos[i].estoque < 5) {
    contadorEstoqueBaixo = contadorEstoqueBaixo + 1;
  }
}

console.log("Produtos com estoque abaixo de 5: " + contadorEstoqueBaixo);
