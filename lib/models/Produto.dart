import 'Categoria.dart';

class Produto {
  String id;
  String nome;
  double preco;
  double quantidade;
  Categoria categoria;

  Produto(this.id, this.nome, this.preco, this.quantidade, this.categoria);
}
