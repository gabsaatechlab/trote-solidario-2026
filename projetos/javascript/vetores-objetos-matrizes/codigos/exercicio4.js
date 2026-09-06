/* Exercício 4
   Encontre o produto mais caro do vetor. */

let produtos = [
  { nome: "Teclado mecânico", preco: 250.90, estoque: 12 },
  { nome: "Mouse gamer",      preco: 120.00, estoque: 3  },
  { nome: "Monitor 24\"",     preco: 899.99, estoque: 7  },
  { nome: "Headset",          preco: 199.50, estoque: 0  }
];

let maisCaro = produtos[0];
for (let i = 1; i < produtos.length; i++) {
  if (produtos[i].preco > maisCaro.preco) {
    maisCaro = produtos[i];
  }
}

console.log(
  "Produto mais caro: " + maisCaro.nome +
  " (R$ " + maisCaro.preco.toFixed(2) + ")"
);
