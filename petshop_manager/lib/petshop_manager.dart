import 'dart:io';

//13abr2022
//Aula sobre funções

//funcao sem parametro e sem retorno
//este tipo de função pode ser utilizada quando não há necessidade de um valor a ser retornado,
//pois não será utilizado em outro lugar. Por não possuir parâmetros, o reaproveitamento de código se torna limitado
void cadastrarPet() {
  String nomeTutor;
  String nomePet;
  String especie;
  String corPelagem;
  String raca;

  print('Digite o nome do tutor: ');
  nomeTutor = stdin.readLineSync()!;

  print('Digite o nome do pet: ');
  nomePet = stdin.readLineSync()!;

  print('Digite a espécie do pet: ');
  especie = stdin.readLineSync()!;

  print('Digite a cor da pelagem do pet: ');
  corPelagem = stdin.readLineSync()!;

  print('Digite a raça do pet: ');
  raca = stdin.readLineSync()!;

  print('''
  Nome do tutor: $nomeTutor,
  Nome do pet: $nomePet,
  Espécie: $especie,
  Cor da pelagem: $corPelagem,
  Raça: $raca

  Dados cadastrados com sucesso!

''');
}

//funcao com retorno e sem parametro
//neste tipo de função, o valor do retorno será utilizado no código em outro lugar,
//sendo geralmente armazenado em uma variável
int calcularEstoqueRestante() {
  int qtdeAtual;
  int qtdeVendida;
  int qtdeRestante;

  print('Digite a quantidade atual do produto: ');
  qtdeAtual = int.parse(stdin.readLineSync()!);

  print('Digite a quantidade vendida: ');
  qtdeVendida = int.parse(stdin.readLineSync()!);

  qtdeRestante = qtdeAtual - qtdeVendida;

  return qtdeRestante;
}

//Função sem retorno e com parametro
//Este tipo de função recebe parametros e os utiliza para realizar alguma instrução
//É menos limitado que a função sem parametros e sem retorno, pois seus resultados irão
//variar de acordo com os parametros
//Como não possui retorno, se for realizado algum cálculo dentro da função,
//ela deve ter alguma instrução para exibir o resultado, como o print, por exemplo
void calcularQtdeXicarasRacao(double peso) {
  double qtdeRacao;

  //Deve ser fornecido 1.5 xicara por quilo do animal
  qtdeRacao = peso * 1.5;

  print('Deve-se oferecer $qtdeRacao xícaras de ração ao pet.');
}

//Função com retorno e com parametro
//Este tipo de função recebe parametros e pode utilizá-los para realizar um cálculo,
//por exemplo. O valor retornado pela função pode ser armazenado em uma variável
//e ser utilizado para outras instruções
double calcularQtdeXicarasRacao2(double peso) {
  double qtdeRacao;

  //Deve ser fornecido 1.5 xicara por quilo do animal
  qtdeRacao = peso * 1.5;

  return qtdeRacao;
}
