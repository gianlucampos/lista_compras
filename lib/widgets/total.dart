import 'package:flutter/material.dart';

class Total extends StatefulWidget {
  @override
  _TotalState createState() => _TotalState();
}

class _TotalState extends State<Total> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          child: Text('Total',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ),
        Text('R\$ 8.00', style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
