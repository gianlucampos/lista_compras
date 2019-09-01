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
          child: Text('Total', style: TextStyle(fontSize: 22)),
        ),
        Container(
          child: Text('R\$ 8.00'),
        ),
      ],
    );
  }
}
