/* Exercício 2
   Crie um vetor de objetos produtos com pelo menos 4 itens
   (nome, preço, estoque) e percorra exibindo cada um. */

let produtos = [
  { nome: "Teclado mecânico", preco: 250.90, estoque: 12 },
  { nome: "Mouse gamer",      preco: 120.00, estoque: 3  },
  { nome: "Monitor 24\"",     preco: 899.99, estoque: 7  },
  { nome: "Headset",          preco: 199.50, estoque: 0  }
];

for (let i = 0; i < produtos.length; i++) {
  console.log(
    produtos[i].nome + " - R$ " + produtos[i].preco.toFixed(2) +
    " (estoque: " + produtos[i].estoque + ")"
  );
}
