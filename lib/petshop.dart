//Receber o tipo de administração de medicamento do animal (solução oral, comprimido, injeção), a concentração do medicamento e o peso do animal
//1. Solução oral: receber a concentração em mg/ml e o peso do animal em kg. Sabendo que a quantidade de medicamento
//deve ser 1mg/kg, calcular quantos ml devem ser dados ao animal
//2. receber a concentração em mg/comprimido e o peso do animal em kg. Sabendo que a quantidade de medicamento deve
//ser 1mg/kg, calcular quantos comprimidos devem ser dados ao animal
//3. receber a concentração em mg/ml e o peso do animal em kg. Sabendo que a quantidade de medicamento deve
//ser 1mg/kg e que o volume na seringa não pode ser maior que 1 ml por kg de animal,
//calcule quantos ml de medicamento devem ser aplicados. Se o valor obtido for maior que 1ml/kg, informe que o medicamento deve ser
//diluído em soro

void show() {
  print(verificarNecessidadeSoro(
      2,
      2,
      (concentracao, peso) => ((concentracao / peso) >= peso)
          ? 'O medicamento precisa ser diluido'
          : 'O medicamento pode ser aplicado na seringa'));
}

//interface
double calcularDoseExtendida(int opcao, double concentracao, double peso) {
  //esta é uma função grande, onde todas as ações são executadas dentro dela
  if (opcao == 1) {
    return peso / concentracao;
  } else if (opcao == 2) {
    return peso / concentracao;
  } else {
    double dose = peso / concentracao;
    if (dose >= peso) {
      print('O medicamento deve ser diluído em soro');
    }
    return dose;
  }
}

//nesta função, outras funçoes são chamadas de acordo com a opção passada por parametro
//dessa forma, temos maior legibilidade de código, melhoramos a manutenção e essa
//divisao em várias funções facilita a realização de testes
double calcularDose(int opcao, double concentracao, double peso) {
  if (opcao == 1) {
    return calcularDoseLiquida(concentracao, peso);
  } else if (opcao == 2) {
    return calcularQtdeComprimidos(concentracao, peso);
  } else {
    return calcularDoseInjetavel(concentracao, peso);
  }
}

//uma forma de reduzir mais ainda o número de linhas de código de uma função é passando uma função como parametro:
double calcularDoseReduzida(double concentracao, double peso, Function acao) {
  return acao(concentracao, peso);
}

double calcularDoseLiquida(double concentracao, double peso) {
  return peso / concentracao;
}

double calcularQtdeComprimidos(double concentracao, double peso) {
  return peso / concentracao;
}

double calcularDoseInjetavel(double concentracao, double peso) {
  double dose = peso / concentracao;
  if (dose >= peso) {
    print('O medicamento deve ser diluído em soro');
  }
  return dose;
}

String verificarNecessidadeSoro(
    double concentracao, double peso, Function acao) {
  double dose = peso / concentracao;
  if (dose >= peso) {
    return 'O medicamento deve ser diluído em soro';
  } else {
    return 'O medicamento pode ser aplicado em seringa';
  }
}
