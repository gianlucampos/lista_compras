import 'package:my_app/models/Categoria.dart';

class Produto {
  String nome;
  double preco;
  double quantidade;
  Categoria categoria;

  Produto(this.nome, this.preco, this.quantidade, this.categoria);
}
