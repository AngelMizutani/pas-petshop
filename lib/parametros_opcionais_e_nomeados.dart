String verificarAprovacao(double nota1, double nota2,
    [double mediaAprovacao = 6]) {
  var media = (nota1 + nota2) / 2;

  if (media >= mediaAprovacao) {
    return 'aprovado';
  } else {
    return 'reprovado';
  }
}

String verificarAprovacaoParamNomeado({required double nota1, required double nota2,
    double mediaAprovacao = 6}) {
  var media = (nota1 + nota2) / 2;

  if (media >= mediaAprovacao) {
    return 'aprovado';
  } else {
    return 'reprovado';
  }
}

String verificarAprovacaoParamMist(
    double nota1, {required double nota2, double mediaAprovacao = 6}) {
  var media = (nota1 + nota2) / 2;

  if (media >= mediaAprovacao) {
    return 'aprovado';
  } else {
    return 'reprovado';
  }
}
