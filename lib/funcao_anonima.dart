//objetivo: entender o contexto

//aprovacao pela media
//aprovacao pela maior nota
//aprovacao pela menor nota

String verificarAprovacaoCompleto(int opcao, double nota1, double nota2) {
  if (opcao == 1) {
    //aprovacao pela media
    double media = (nota1 + nota2) / 2;
    if (media >= 6) {
      return "Aprovado";
    } else {
      return "Reprovado";
    }
  } else if (opcao == 2) {
    //aprovacao pela maior nota
    double maior = nota1;
    if (nota2 > nota1) {
      maior = nota2;
    }

    if (maior >= 6) {
      return 'aprovado';
    } else {
      return 'reprovado';
    }
  } else {
    //aprovacao pela menor nota
    double menor = nota1;
    if (nota2 < nota1) {
      menor = nota2;
    }

    if (menor >= 6) {
      return 'aprovado';
    } else {
      return 'reprovado';
    }
  }
}

void show() {}

String verificarAprovacao(int opcao, double nota1, double nota2) {
  if (opcao == 1) {
    return verificarPelaMedia(nota1, nota2);
  } else if (opcao == 2) {
    return verificarPelaMaiorNota(nota1, nota2);
  } else {
    return verificarPelaMenorNota(nota1, nota2);
  }
}

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
