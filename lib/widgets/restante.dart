import 'package:flutter/material.dart';

class Restante extends StatefulWidget {
  @override
  _RestanteState createState() => _RestanteState();
}

class _RestanteState extends State<Restante> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Text('Restante', style: TextStyle(fontSize: 22)),
        ),
        Container(
          child: Text('R\$ 3.00'),
        ),
      ],
    );
  }
}
