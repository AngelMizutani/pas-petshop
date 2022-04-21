//objetivo: entender parametro de funções

//aprovacao pela media
//aprovacao pela maior nota
//aprovacao pela menor nota

void show() {
  print(verificarAprovacao(10, 5, verificarPelaMedia));
}

//Neste caso, usa-se uma função como parametro, assim, diminui-se uma grande
//quantidade de linhas de código, deixando o código mais legível
//Fazemos isso quando dependemos de uma ação para executar a função
String verificarAprovacao(double nota1, double nota2, Function acao) {
  return acao(nota1, nota2);
}

//arrow function: utilizada quando só se tem um único comando
//exemplo:
/*
String verificarAprovacao(double nota1, double nota2, (nota1, nota2){
  if (((nota1 + nota2)/2) >= 6) {
    return 'aprovado';
  } else {
    return 'reprovado';
  }
})

Podemos transformar a função acima em arrow function:
String verificarAprovacao(double nota1, double nota2, (nota1, nota2) =>
  (((nota1 + nota2)/2) >= 6) ? 'aprovado' : 'reprovado'
  
);

*/

String verificarPelaMedia(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  return compararValor(media);
}

String verificarPelaMaiorNota(double nota1, double nota2) {
  double maior = nota1;
  if (nota2 > nota1) {
    maior = nota2;
  }
  return compararValor(maior);
}

String verificarPelaMenorNota(double nota1, double nota2) {
  double menor = nota1;
  if (nota2 < nota1) {
    menor = nota2;
  }
  return compararValor(menor);
}

String compararValor(double valor) {
  if (valor >= 6) {
    return 'aprovado';
  } else {
    return 'reprovado';
  }
}
