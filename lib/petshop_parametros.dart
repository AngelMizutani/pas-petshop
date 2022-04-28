/*
Duas funções com parâmetros opcionais (valor padrão);
Uma função com parâmetros nomeados obrigatórios;
Uma função com parâmetros nomeados opcionais;
Uma função com parâmetros nomeados obrigatórios e opcionais;
Uma única função com parâmetros nomeados e anônimos;

1) Em que caso os parâmetros nomeados são úteis? 
  Quando se tem um número grande de padrões, melhorando a legibilidade. Uma aplicação útil dos parâmetros nomeados
  é no uso de construtores de classe

2) Por padrão os parâmetros nomeados são opcionais ou obrigatórios? Caso sejam opcionais, como torná-los obrigatórios?
  Opcionais. Para torná-los obrigatórios deve-se incluir o termo "required" antes da declaração do padrão

3) Qual a sintaxe para fazer a chamada de uma função com os parâmetros nomeados? 
  funcao(parametro1: valor, parametro2: valor2);


4) É possível definir uma única função com parâmetros nomeados e anônimos?
  Sim, aí os parâmetros anônimos não ficam entre chaves.

5) Quais são as vantagens em utilizar parâmetros nomeados? 
  Melhor legibilidade e também evita a informação errônea dos parâmetros

6) Quais são as diferenças entre parâmetros nomeados e anônimos?
  Os parâmetros nomeados podem ser informados fora de ordem, já que, ao serem fornecidos, 
  seus nomes são apresentados. Já os parâmetros anônimos devem ser fornecidos na mesma
  ordem em que foram declarados na função.


*/

void show() {
  // calcularQtdeVacina(10);
  // print(calcularValorRacao(100));
  print(escreverMsgAniversario(nomeCliente: 'Angelica', nomePet: 'Zelda'));
}

//Duas funções com parâmetros opcionais (valor padrão)

//calcular quantidade de vacina de acordo com a dose indicada pelo fabricante
//a dose padrão é 1mg/kg, mas pode variar
void calcularQtdeVacina(double peso, [double dose = 1]) {
  double quantidade = peso / dose;
  print('$quantidade ml');
}

//calcular desconto de ração. O valor padrão é 10%
double calcularValorRacao(double valorNormal, [double desconto = 10]) {
  double valorFinal = valorNormal * (1 - (desconto / 100));

  return valorFinal;
}

//Uma função com parâmetros nomeados obrigatórios;
String escreverMsgAniversario(
    {required String nomeCliente, required String nomePet}) {
  return 'Feliz aniversário, $nomeCliente! $nomePet tem muita sorte por ter você!';
}

//Uma função com parâmetros nomeados opcionais;
// void listarPrecosServicos({double valorBanho})
