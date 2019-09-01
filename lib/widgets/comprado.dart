import 'package:flutter/material.dart';

class Comprado extends StatefulWidget {
  @override
  _CompradoState createState() => _CompradoState();
}

class _CompradoState extends State<Comprado> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Text('Comprado', style: TextStyle(fontSize: 22)),
        ),
        Container(
          child: Text('R\$ 5.00'),
        ),
      ],
    );
  }
}
