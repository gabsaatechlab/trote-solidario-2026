/* Exercício 1
   Declare uma matriz 4x4 preenchida com zeros e exiba-a
   usando dois laços aninhados. */

let matriz = [];

for (let i = 0; i < 4; i++) {
  matriz[i] = [];
  for (let j = 0; j < 4; j++) {
    matriz[i][j] = 0;
  }
}

for (let i = 0; i < matriz.length; i++) {
  let linha = "";
  for (let j = 0; j < matriz[i].length; j++) {
    linha = linha + matriz[i][j] + "  ";
  }
  console.log(linha);
}
