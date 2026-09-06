/* Exercício 4
   Verifique se uma matriz quadrada é uma matriz identidade
   (1 na diagonal principal, 0 nas demais posições). */

let matriz = [
  [1, 0, 0],
  [0, 1, 0],
  [0, 0, 1]
];

let ehIdentidade = matriz.length > 0;

for (let i = 0; i < matriz.length; i++) {
  if (matriz[i].length !== matriz.length) {
    ehIdentidade = false;
    break;
  }

  for (let j = 0; j < matriz[i].length; j++) {
    const valorEsperado = i === j ? 1 : 0;
    if (matriz[i][j] !== valorEsperado) {
      ehIdentidade = false;
      break;
    }
  }

  if (!ehIdentidade) {
    break;
  }
}

console.log("A matriz é identidade? " + ehIdentidade);
