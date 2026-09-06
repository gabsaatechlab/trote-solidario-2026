/* Exercício 7
   Altere a propriedade preco de um produto específico
   e exiba o vetor atualizado. */

let produtos = [
  { nome: "Teclado mecânico", preco: 250.90, estoque: 12 },
  { nome: "Mouse gamer",      preco: 120.00, estoque: 3  },
  { nome: "Monitor 24\"",     preco: 899.99, estoque: 7  },
  { nome: "Headset",          preco: 199.50, estoque: 0  }
];

// Alterando o preço do "Mouse gamer" (índice 1)
produtos[1].preco = 99.90;

console.log(produtos);
