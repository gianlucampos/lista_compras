import 'Categoria.dart';

enum Unidade {
  UNIDADE,
  DEZENA,
  MILILITRO,
  LITRO,
  KILOGRAMA,
  GRAMA,
  CAIXA,
  EMBALAGEM,
  GALAO,
  GARRAFA,
  LATA,
  PACOTE
}

getDescricao(Unidade unidade) {
  switch (unidade) {
    case Unidade.UNIDADE:
      return 'un';
    case Unidade.DEZENA:
      return 'dz';
    case Unidade.MILILITRO:
      return 'ml';
    case Unidade.LITRO:
      return 'L';
    case Unidade.KILOGRAMA:
      return 'kg';
    case Unidade.GRAMA:
      return 'g';
    case Unidade.CAIXA:
      return 'Caixa';
    case Unidade.EMBALAGEM:
      return 'Embalagem';
    case Unidade.GALAO:
      return 'Galão';
    case Unidade.GARRAFA:
      return 'Garrafa';
    case Unidade.LATA:
      return 'Lata';
    case Unidade.PACOTE:
      return 'Pacote';
  }
}

class Produto {
  String id;
  String nome;
  double preco;
  double quantidade;
  List<String> lista;
  Categoria categoria;
  Unidade unidade;

  Produto(this.id, this.nome, this.preco, this.quantidade, this.categoria);
}
