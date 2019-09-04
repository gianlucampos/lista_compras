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
          margin: EdgeInsets.symmetric(vertical: 15),
          child: Text('Comprado',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ),
        Text('R\$ 5.00', style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
