import 'package:flutter/material.dart';

import '../models/Produto.dart';

class DropDownUnidade extends StatefulWidget {
  @override
  DropDownUnidadeState createState() => DropDownUnidadeState();
}

class DropDownUnidadeState extends State<DropDownUnidade> {
  Unidade valorSelecionado = Unidade.values[0];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<Unidade>(
        decoration: InputDecoration(
          isDense: true,
          labelText: 'Unidade',
          alignLabelWithHint: true,
        ),
        isDense: true,
        elevation: 4,
        value: valorSelecionado,
        onChanged: (Unidade valor) {
          setState(() {
            valorSelecionado = valor;
          });
        },
        items: Unidade.values.map((Unidade unidade) {
          return DropdownMenuItem<Unidade>(
            value: unidade,
            child: Text(unidade.name),
          );
        }).toList());
  }
}
