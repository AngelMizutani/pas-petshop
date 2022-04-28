void show() {
  //Exercicio 1 - faça a chamada do método adicionarSalario validando se o valor é positivo.
  // adicionarSalario(1000, 200, ePositivo);

  //Exercicio 2 - refaça o exe anterior, convertendo a named function em anonymous function.
  /*
  adicionarSalario(1000, 500, (valor) {
    if (valor > 0) {
      return true;
    } else {
      return false;
    }
  });
  */

  //Exercício 3  - refaça o exe anterior, utilizando a arrow function.
  // adicionarSalario(1000, 300, (valor) => (valor > 0) ? true : false);

  //Exercício 4  - refaça os exe's a, b e c, porém validando se o valor é menor do que o salário.
  //Impossivel de fazer pois a função que é passada por parâmetro em adicionarSalario só aceita um parametro

  //Exercício 5  - refaça o exe c porém fazendo uma validação sua.
  //Validação: o valor do bonus não pode ser maior que 1000 reais
  /*
  adicionarSalario(1000, 100, (valor) {
    if (valor < 1000) {
      return true;
    } else {
      return false;
    }
  });
  */

  //Exercício 6 - faça 2 exemplos do uso de funções anônimas utilizando a biblioteca do dart.
  var frutas = ['maçã', 'banana', 'abacaxi', 'maracujá', 'jabuticaba'];

  frutas.forEach((fruta) => print(fruta));
  frutas.forEach((item) {
    print('${frutas.indexOf(item)}: $item');
  });
}

void adicionarSalario(
    double salario, double valor, Function(double valor) validacao) {
  final eValido = validacao(valor);
  if (eValido) {
    final total = salario + valor;
    print(total);
  }
}

bool ePositivo(double valor) {
  if (valor > 0) {
    return true;
  } else {
    return false;
  }
}

 /*
  Exercício 6 - Conseguiu entender:
    - O contexto em que é útil utilizar funções anônimas?
      Quando se precisa realizar uma ação apenas uma única vez, assim não é necessário criar uma função apenas para ser
      chamada no parâmetro de outra função

    - Os requisitos necessários para usar funções anônimas? 
      É necessário que a função onde a função anônima será executada receba uma função por parâmetro

    - diferença entre função nomeada e anônimas?
      Uma função nomeada possui um nome e pode ser chamada várias vezes, enquanto uma função anônima 
      não possui um nome e o seu escopo é declarado dentro do parâmetro da função que a recebe como parâmetro

    - diferença entre anonymous function e arrow function?
      A função anônima possui um bloco de comandos dentro dela, enquanto a arrow function é uma
      função anônima com um único comando

    Em que caso devemos utilizar Arrow Function? O que devemos considerar?
    Nos casos em que vamos usar apenas um único comando. Portanto, devemos considerar
    as ações que queremos que sejam executadas.
  */
