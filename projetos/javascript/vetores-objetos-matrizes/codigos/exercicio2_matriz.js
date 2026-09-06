/* Exercício 2
   Crie uma matriz de temperaturas com 3 cidades (linhas) e 5 dias
   (colunas) e calcule a média de cada cidade. */

let temperaturas = [
  [28, 30, 27, 29, 31], // Cidade 1
  [22, 21, 23, 20, 22], // Cidade 2
  [35, 34, 36, 33, 37]  // Cidade 3
];

let medias = [];

for (let i = 0; i < temperaturas.length; i++) {
  let soma = 0;
  for (let j = 0; j < temperaturas[i].length; j++) {
    soma = soma + temperaturas[i][j];
  }
  medias[i] = soma / temperaturas[i].length;
}

for (let i = 0; i < medias.length; i++) {
  console.log("Média da cidade " + (i + 1) + ": " + medias[i].toFixed(2));
}
