import 'package:flutter/material.dart';
import 'package:lista_compras/db/db_helper.dart';

import '../models/Categoria.dart';

class DropDownCategoria extends StatefulWidget {
  @override
  DropDownCategoriaState createState() => DropDownCategoriaState();
}

class DropDownCategoriaState extends State<DropDownCategoria> {
  static List<Categoria> _categorias = _getCategorias();

//  static List<Categoria> _categorias = [Categoria(id: '1', nome: 'Frutas')];
  Categoria valorSelecionado =
  _categorias == null ? null : _categorias.elementAt(0);

  @override
  Widget build(BuildContext context) {
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
}

_getCategorias() async {
  List<Categoria> cats = new List<Categoria>();
  var categorias = await DBHelper.retrieve('Categoria');
  categorias.forEach((item) => cats.add(Categoria.fromMap(item)));
//  cats = categorias.map((c) => Categoria.fromMap(c)).toList();
  return cats;
}


