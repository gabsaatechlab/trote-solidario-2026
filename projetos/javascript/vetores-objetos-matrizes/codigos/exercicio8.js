/* Exercício 8 (Desafio)
   Adicione uma propriedade nova (ex.: desconto) a todos os objetos
   de um vetor, usando um laço. */

let produtos = [
  { nome: "Teclado mecânico", preco: 250.90, estoque: 12 },
  { nome: "Mouse gamer",      preco: 120.00, estoque: 3  },
  { nome: "Monitor 24\"",     preco: 899.99, estoque: 7  },
  { nome: "Headset",          preco: 199.50, estoque: 0  }
];

for (let i = 0; i < produtos.length; i++) {
  produtos[i].desconto = 0.10; // 10% de desconto para todos
}

console.log(produtos);
