import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Totalizador extends StatelessWidget {
  final String nome;
  final double valor;

  Totalizador(this.nome, this.valor);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          child: Text(nome,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ),
        Text('R\$ ${NumberFormat("#0.00").format(valor)}',
            style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
