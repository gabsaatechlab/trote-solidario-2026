/* Exercício 3
   Encontre a maior temperatura registrada e informe em que cidade
   e em que dia ela ocorreu. */

let temperaturas = [
  [28, 30, 27, 29, 31], // Cidade 1
  [22, 21, 23, 20, 22], // Cidade 2
  [35, 34, 36, 33, 37]  // Cidade 3
];

let maior = temperaturas[0][0];
let cidadeMaior = 0;
let diaMaior = 0;

for (let i = 0; i < temperaturas.length; i++) {
  for (let j = 0; j < temperaturas[i].length; j++) {
    if (temperaturas[i][j] > maior) {
      maior = temperaturas[i][j];
      cidadeMaior = i;
      diaMaior = j;
    }
  }
}

console.log(
  "Maior temperatura: " + maior +
  " (cidade " + (cidadeMaior + 1) + ", dia " + (diaMaior + 1) + ")"
);
