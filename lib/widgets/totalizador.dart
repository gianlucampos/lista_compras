import 'package:flutter/material.dart';

import 'package:my_app/widgets/comprado.dart';
import 'package:my_app/widgets/restante.dart';
import 'package:my_app/widgets/total.dart';

class Totalizador extends StatefulWidget {
  @override
  _TotalizadorState createState() => _TotalizadorState();
}

class _TotalizadorState extends State<Totalizador> {
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
            Total(),
            Comprado(),
            Restante(),
          ],
        ),
      ),
    );
  }
}
