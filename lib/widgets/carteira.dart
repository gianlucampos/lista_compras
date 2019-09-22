import 'package:flutter/material.dart';
import 'package:my_app/widgets/totalizador.dart';

class Carteira extends StatefulWidget {
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
            Totalizador('Carteira', 8.00),
            Totalizador('Total', 5.00),
            Totalizador('Saldo', 3.00),
          ],
        ),
      ),
    );
  }
}
