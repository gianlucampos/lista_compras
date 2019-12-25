import 'package:flutter/material.dart';

class TelaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Lista'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [],
      ),
      bottomSheet: Container(
        color: Colors.green,
        height: MediaQuery.of(context).size.height * 0.1,
        child: Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
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
                      children: <Widget>[Text('Total (0)'), Text('R\$ 0,00')])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
