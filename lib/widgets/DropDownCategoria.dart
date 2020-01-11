import 'package:flutter/material.dart';

import '../models/Categoria.dart';

class DropDownCategoria extends StatefulWidget {
  @override
  DropDownCategoriaState createState() => DropDownCategoriaState();
}

class DropDownCategoriaState extends State<DropDownCategoria> {
  static List<Categoria> categorias = [
    Categoria(id: '1', nome: 'Frutas')
  ]; //Tem que puxar do banco
  Categoria valorSelecionado = categorias.elementAt(0);

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
        items: categorias.map((Categoria categoria) {
          return DropdownMenuItem<Categoria>(
            value: categoria,
            child: Text(categoria.nome),
          );
        }).toList());
  }
}
