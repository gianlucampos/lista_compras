import 'package:flutter/cupertino.dart';

class Categoria {
  final int id;
  final String nome;

  Categoria({this.id, @required this.nome});

  // Serializa o objeto
  Map<String, dynamic> toMap() => {
        "id": id,
        "nome": nome,
      };

  // Deserializa o objeto
  factory Categoria.fromMap(Map<String, dynamic> json) => new Categoria(
        id: json["id"] as int,
        nome: json["nome"],
      );

  @override
  String toString() {
    return 'Categoria{id: $id, nome: $nome}';
  }
}
