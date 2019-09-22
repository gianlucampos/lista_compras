import 'package:flutter/material.dart';
import 'package:my_app/widgets/totalizador.dart';

class Carteira extends StatelessWidget {
  final double valorDisponivel;
  final double valorCarrinho;

  Carteira(this.valorDisponivel, this.valorCarrinho);

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
            Totalizador('Carteira', valorDisponivel),
            Totalizador('Total', valorCarrinho),
            Totalizador('Saldo', valorDisponivel - valorCarrinho),
          ],
        ),
      ),
    );
  }
}
