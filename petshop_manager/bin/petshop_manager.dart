import 'package:petshop_manager/petshop_manager.dart' as petshop_manager;

void main(List<String> arguments) {
  // petshop_manager.cadastrarPet();
  // print('Estoque: ' + (petshop_manager.calcularEstoqueRestante()).toString());
  // petshop_manager.calcularQtdeXicarasRacao(1.5);
  print('Quantidade de xícaras a serem fornecidas ao pet: ' +
      (petshop_manager.calcularQtdeXicarasRacao2(2.5)).toString());
}
