/* Exercício 3
   Calcule o valor total do estoque
   (soma de preço × estoque de cada produto). */

let produtos = [
  { nome: "Teclado mecânico", preco: 250.90, estoque: 12 },
  { nome: "Mouse gamer",      preco: 120.00, estoque: 3  },
  { nome: "Monitor 24\"",     preco: 899.99, estoque: 7  },
  { nome: "Headset",          preco: 199.50, estoque: 0  }
];

let valorTotalEstoque = 0;
for (let i = 0; i < produtos.length; i++) {
  valorTotalEstoque = valorTotalEstoque + (produtos[i].preco * produtos[i].estoque);
}

console.log("Valor total do estoque: R$ " + valorTotalEstoque.toFixed(2));
