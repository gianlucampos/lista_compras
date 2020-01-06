import 'package:flutter/material.dart';

import '../models/Produto.dart';

class _DropDownButtonWidget extends StatefulWidget {
  final List<Unidade> unidades = [
    Unidade.UNIDADE,
    Unidade.DEZENA,
    Unidade.MILILITRO,
    Unidade.LITRO,
    Unidade.KILOGRAMA,
    Unidade.GRAMA,
    Unidade.CAIXA,
    Unidade.EMBALAGEM,
    Unidade.GALAO,
    Unidade.GARRAFA,
    Unidade.LATA,
    Unidade.PACOTE
  ];

  @override
  _DropDownButtonWidgetState createState() => _DropDownButtonWidgetState();
}

class _DropDownButtonWidgetState extends State<_DropDownButtonWidget> {
  String valorSelecionado = 'One';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
        decoration: InputDecoration(
          isDense: true,
          labelText: 'Unidade',
          alignLabelWithHint: true,
        ),
        value: valorSelecionado,
        isDense: true,
        onChanged: (String valor) {
          setState(() {
            valorSelecionado = valor;
          });
        },
        elevation: 4,
        items: <String>['One', 'Two', 'Free', 'Four']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList());
  }
}
