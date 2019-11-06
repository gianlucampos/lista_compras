import 'package:flutter/material.dart';
import 'package:my_app/widgets/Totalizador.dart';

class Carteira extends StatefulWidget {
  final double valorDisponivel;
  final double valorCarrinho;

  Carteira(this.valorDisponivel, this.valorCarrinho);

  @override
  _CarteiraState createState() => _CarteiraState();
}

class _CarteiraState extends State<Carteira> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      width: double.infinity,
      height: 100,
      child: Card(
        color: Colors.green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Totalizador('Carteira', widget.valorDisponivel),
            Totalizador('Total', widget.valorCarrinho),
            Totalizador('Saldo', widget.valorDisponivel - widget.valorCarrinho),
          ],
        ),
      ),
    );
  }
}
