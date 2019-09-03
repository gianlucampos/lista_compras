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
    return Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 100,
              child: Card(
                color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Total(),
                    Comprado(),
                    Restante(),
                  ],
                ),
              ),
            ),
          );
  }
}