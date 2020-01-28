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
    if (_categorias.isEmpty) {
      _getCategorias();
    }
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

  //Utilizar forEach ou Map
  _getCategorias() async {
    DBHelper.retrieve('Categoria').then((categorias) {
      setState(() {
//        categorias.forEach((item) => _categorias.add(Categoria.fromMap(item)));
        _categorias = categorias.map((c) => Categoria.fromMap(c)).toList();
      });
    });
  }
}
