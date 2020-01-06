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

extension Ext_Unidade on Unidade {
  static const names = {
    Unidade.UNIDADE: 'un',
    Unidade.DEZENA: 'dz',
    Unidade.MILILITRO: 'ml',
    Unidade.LITRO: 'L',
    Unidade.KILOGRAMA: 'Kg',
    Unidade.GRAMA: 'g',
    Unidade.CAIXA: 'Caixa',
    Unidade.EMBALAGEM: 'Embalagem',
    Unidade.GALAO: 'Galão',
    Unidade.GARRAFA: 'Garrafa',
    Unidade.LATA: 'Lata',
    Unidade.PACOTE: 'Pacote'
  };

  String get name => names[this];
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
