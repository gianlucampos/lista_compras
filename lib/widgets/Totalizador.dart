import 'package:flutter/material.dart';

class Totalizador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: MediaQuery
              .of(context)
              .size
              .width * 0.6,
          child: Row(
            children: <Widget>[
              Icon(
                Icons.attach_money,
                size: 40,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[Text('Total (0)'), Text('R\$ 0,00')])
            ],
          ),
        ),
        Container(
          child: Row(
            children: <Widget>[
              Icon(
                Icons.shopping_cart,
                size: 40,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[Text('Carrinho (0)'), Text('R\$ 0,00')])
            ],
          ),
        ),
      ],
    );
  }
}
