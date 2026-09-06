/* ============================================================
   EXERCÍCIOS PROPOSTOS — Vetor de Objetos em JavaScript
   ============================================================ */

/* 1. Objeto livro com título, autor e ano — exibir em uma linha */
let livro = {
  titulo: "O Senhor dos Anéis",
  autor: "J.R.R. Tolkien",
  ano: 1954
};
console.log(livro.titulo + " - " + livro.autor + " (" + livro.ano + ")");


/* 2. Vetor de objetos "produtos" (≥4 itens) — percorrer exibindo cada um */
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


/* 3. Valor total do estoque (soma de preco * estoque) */
let valorTotalEstoque = 0;
for (let i = 0; i < produtos.length; i++) {
  valorTotalEstoque = valorTotalEstoque + (produtos[i].preco * produtos[i].estoque);
}
console.log("Valor total do estoque: R$ " + valorTotalEstoque.toFixed(2));


/* 4. Produto mais caro do vetor */
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


/* 5. Busca em vetor de objetos "alunos" por nome — retorna objeto ou null */
let alunos = [
  { nome: "Ana",   idade: 20, nota: 8.5 },
  { nome: "Bruno", idade: 22, nota: 7.0 },
  { nome: "Carla", idade: 19, nota: 9.2 }
];

function buscarAlunoPorNome(vetor, nome) {
  for (let i = 0; i < vetor.length; i++) {
    if (vetor[i].nome === nome) {
      return vetor[i];
    }
  }
  return null;
}

console.log(buscarAlunoPorNome(alunos, "Bruno")); // { nome: "Bruno", idade: 22, nota: 7 }
console.log(buscarAlunoPorNome(alunos, "Daniel")); // null


/* 6. Contar produtos com estoque abaixo de 5 unidades */
let contadorEstoqueBaixo = 0;
for (let i = 0; i < produtos.length; i++) {
  if (produtos[i].estoque < 5) {
    contadorEstoqueBaixo = contadorEstoqueBaixo + 1;
  }
}
console.log("Produtos com estoque abaixo de 5: " + contadorEstoqueBaixo);


/* 7. Alterar o preço de um produto específico e exibir o vetor atualizado */
// Exemplo: alterar o preço do "Mouse gamer" (índice 1)
produtos[1].preco = 99.90;
console.log(produtos);


/* 8. Desafio: adicionar uma propriedade nova (ex.: desconto) a todos os
      objetos de um vetor, usando um laço */
for (let i = 0; i < produtos.length; i++) {
  produtos[i].desconto = 0.10; // 10% de desconto para todos
}
console.log(produtos);
