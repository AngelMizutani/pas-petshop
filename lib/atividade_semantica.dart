/*
Exercício 01 - implemente as funções
a) Função que solicite um número e realizar validações: (1) se é par; (2) maior que zero; (3) se é um número primo.
função "hospedeira" : solicitar um número
b) Função que solicite a data inicial e retorne quanto tempo passou em: (1) anos; (2) dias; e (3) horas.
c) Função que solicite a quantidade de dias trabalhadas, valor que recebe por hora e calcule o salarário para: (1) auxiliar; (2) júnior; e (3) pleno.
Exercício 02 - para cada função "hospedeira", defina uma função anônima.
*/

void show() {
  // print(validar(3, verificarPar) ? 'É par' : 'Não é par');
  // print(validar(3, verificarMaiorQueZero)
  //     ? 'É maior que zero'
  //     : 'Não é maior que zero');
  // print(validar(3, verificarPrimo) ? 'É primo' : 'Não é primo');
  // print(validar(2, (num) {
  //   if (num > 0) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }));

  // print(validar(5, (numero) => numero % 2 == 0 ? true : false));

  // print(calcularTempo('2021-05-04', calcularEmAnos));
  // print(calcularTempo('2022-05-02', calcularEmDias));

  /*
  print(calcularTempo('2022-05-02', (dataInicial) {
    DateTime dt = DateTime.parse(dataInicial);
    Duration dur = DateTime.now().difference(dt);
    String diferencaHoras = (dur.inDays * 24).toString();

    return 'A diferença de tempo é de $diferencaHoras horas';
  }));
  */

  // calcularSalario(20, 10, calcularSalarioJunior);
  // calcularSalario(20, 20, calcularSalarioJunior);
  calcularSalario(20, 40, (diasTrab, valorHora) => diasTrab * 8 * valorHora);
}

//a) Função que solicite um número e realizar validações: (1) se é par; (2) maior que zero; (3) se é um número primo.
//função "hospedeira" : solicitar um número
bool validar(int num, Function(int num) acao) {
  bool resultado = acao(num);

  return resultado;
}

bool verificarPar(int numero) {
  if (numero % 2 == 0) {
    return true;
  } else {
    return false;
  }
}

bool verificarMaiorQueZero(int numero) {
  if (numero > 0) {
    return true;
  } else {
    return false;
  }
}

bool verificarPrimo(int num) {
  int qtdeDivisores = 0;

  for (int i = 1; i < num; i++) {
    if (num % i == 0) {
      qtdeDivisores++;
    }
  }

  if (qtdeDivisores == 2) {
    return true;
  } else {
    return false;
  }
}

//b) Função que solicite a data inicial e retorne quanto tempo passou em: (1) anos; (2) dias; e (3) horas.
String calcularTempo(String dataInicial, Function(String dataInicial) acao) {
  String tempoPassado = acao(dataInicial);

  return tempoPassado;
}

String calcularEmAnos(String dataInicial) {
  DateTime dt = DateTime.parse(dataInicial);
  Duration dur = DateTime.now().difference(dt);
  String diferencaAnos = (dur.inDays / 365).floor().toString();

  return 'A diferença de tempo é de $diferencaAnos anos';
}

String calcularEmDias(String dataInicial) {
  DateTime dt = DateTime.parse(dataInicial);
  Duration dur = DateTime.now().difference(dt);
  String diferencaDias = dur.inDays.floor().toString();

  return 'A diferença de tempo é de $diferencaDias anos';
}

String calcularEmHoras(String dataInicial) {
  DateTime dt = DateTime.parse(dataInicial);
  Duration dur = DateTime.now().difference(dt);
  String diferencaAnos = (dur.inDays / 365).floor().toString();

  return 'A diferença de tempo é de $diferencaAnos anos';
}

// c) Função que solicite a quantidade de dias trabalhadas, valor que recebe
//por hora e calcule o salário para: (1) auxiliar; (2) júnior; e (3) pleno.
void calcularSalario(int diasTrab, double valorHora,
    Function(int diasTrab, double valorHora) acao) {
  double salario = acao(diasTrab, valorHora);

  print('O salário é R\$ $salario');
}

double calcularSalarioAuxiliar(int diasTrab, double ValorHora) {
  return diasTrab * 8 * ValorHora;
}

double calcularSalarioJunior(int diasTrab, double ValorHora) {
  return diasTrab * 8 * ValorHora;
}

double calcularSalarioPleno(int diasTrab, double ValorHora) {
  return diasTrab * 8 * ValorHora;
}
