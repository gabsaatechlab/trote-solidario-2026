/* Exercício 5
   Implemente uma busca que receba um vetor de objetos alunos e um nome,
   retornando o objeto correspondente (ou null). */

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

console.log(buscarAlunoPorNome(alunos, "Bruno"));  // { nome: "Bruno", idade: 22, nota: 7 }
console.log(buscarAlunoPorNome(alunos, "Daniel"));  // null
