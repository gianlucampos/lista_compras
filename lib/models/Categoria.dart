import 'package:flutter/cupertino.dart';

class Categoria {
  final String id;
  final String nome;

  Categoria({@required this.id, @required this.nome});

  // Insert
  Map<String, dynamic> toMap() =>
      {
        "id": id,
        "nome": nome,
      };

  // Retrieve
  factory Categoria.fromMap(Map<String, dynamic> json) =>
      new Categoria(
        id: json["id"],
        nome: json["nome"],
      );
}
