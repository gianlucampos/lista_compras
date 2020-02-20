import 'package:flutter/material.dart';

import '../db/db_helper.dart';
import '../models/Categoria.dart';

class DropDownCategoria extends StatefulWidget {
  @override
  DropDownCategoriaState createState() => DropDownCategoriaState();
}

class DropDownCategoriaState extends State<DropDownCategoria> {
  static List<Categoria> _categorias = List<Categoria>();

  @override
  Widget build(BuildContext context) {
    _getCategorias();
    Categoria valorSelecionado =
        _categorias.isEmpty ? null : _categorias.elementAt(0);

    return DropdownButtonFormField<Categoria>(
        decoration: InputDecoration(
          isDense: true,
          labelText: 'Categoria',
          alignLabelWithHint: true,
        ),
        isDense: true,
        elevation: 4,
        value: valorSelecionado,
        onChanged: (Categoria valor) {
          setState(() {
            valorSelecionado = valor;
          });
        },
        items: _categorias == null
            ? null
            : _categorias.map((Categoria categoria) {
                return DropdownMenuItem<Categoria>(
                  value: categoria,
                  child: Text(categoria.nome),
                );
              }).toList());
  }

  _getCategorias() async {
    DBHelper.retrieve('Categoria').then((categorias) {
      setState(() {
        _categorias = categorias.map((c) => Categoria.fromMap(c)).toList();
      });
    });
  }
}
