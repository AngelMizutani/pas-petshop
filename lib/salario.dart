/*
Defina 3 funções do mesmo contexto e uma interface para estas funções
-> Interface (função para escolher) salário
-> Receber salario e um valor. bonificar o valor no salário e informar se o total é maior que o salário minimo.
-> Receber salario e um valor. Descontar o valor no salário e informar se ainda resta salário a receber.
-> Receber salario e um valor. Neste caso o valor é o bonus que tem encargos de 10%. Adicionar o bonus e retornar o valor do salario.
*/

//função grandona, com todas as operações
double calcularSalarioExtenso(int opcao, double salario, double valor) {
  if (opcao == 1) {
    return salario * (1 + valor / 100);
  } else if (opcao == 2) {
    salario = salario * (1 - valor / 100);
    if (salario <= 0) {
      print('Não há salário a receber');
    }
    return salario;
  } else {
    return salario * 1.10;
  }
}

/*
double calcularSalario(int opcao, double salario, double valor) {
  if (opcao == 1) {
    return calcularBonificacao(salario, valor);
  } else if (opcao == 2) {
    return calcularDesconto(salario, valor);
  } else {
    return calcularBonus(salario);
  }
}
*/

//refatorando a função acima:
double calcularSalario(double salario, double valor, Function acao) {
  return acao(salario, valor);
}

double calcularBonificacao(double salario, double valor) {
  return salario * (1 + valor / 100);
}

double calcularDesconto(double salario, double valor) {
  salario = salario * (1 - valor / 100);
  if (salario <= 0) {
    print('Não há salário a receber');
  }
  return salario;
}

double calcularBonus(double salario) {
  return salario * 1.10;
}
