import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'AppBarContextualActions.dart';
import 'DropDownButtonFormFieldWidget.dart';

class TelaTeste extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Testes',
      )),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            GestureDetector(
              child: Container(
                child: Text(
                  'Main',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                  ),
                ),
                color: Colors.red,
                padding: EdgeInsets.all(20),
                alignment: Alignment.topLeft,
              ),
              onTap: () {
                Navigator.pushNamed(context, 'Main App');
              },
            ),
            Flexible(
              child: Container(
                  alignment: Alignment.topLeft,
                  child: Text('DropDownButtonFormField')),
            ),
            DropDownButtonFormFieldWidget(),
            GestureDetector(
              child: Container(
                child: Text(
                  'App Bar',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                  ),
                ),
                color: Colors.green,
                padding: EdgeInsets.all(20),
                alignment: Alignment.topLeft,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => AppBarContextual()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
