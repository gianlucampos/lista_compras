import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Totalizador extends StatefulWidget {
  final String nome;
  final double valor;

  Totalizador(this.nome, this.valor);

  @override
  _TotalizadorState createState() => _TotalizadorState();
}

class _TotalizadorState extends State<Totalizador> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          child: Text(widget.nome,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ),
        Text('R\$ ${NumberFormat("#0.00").format(widget.valor)}',
            style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
