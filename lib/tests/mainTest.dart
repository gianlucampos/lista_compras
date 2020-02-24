import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../tests/MultiSelectionList.dart';
import '../views/HomeScreen.dart';
import 'AppBarContextualActions.dart';
import 'DropDownButtonFormFieldWidget.dart';

class TelaTeste extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Testes')),
      body: SingleChildScrollView(
        child: Wrap(
          children: <Widget>[
            GenericWidget('Main', TelaInicio(), Colors.amber),
            GenericWidget('App Bar', AppBarContextual(), Colors.amberAccent),
            GenericWidget(
                'Multi Selection', MultiSelection(), Colors.amberAccent),
            DropDownButtonFormFieldWidget(),
          ],
        ),
      ),
    );
  }
}

class GenericWidget extends StatelessWidget {
  final String nomeComponente;
  final Widget componente;
  final Color cor;

  GenericWidget(this.nomeComponente, this.componente, this.cor);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Text(
          nomeComponente,
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
          ),
        ),
        color: cor,
        padding: EdgeInsets.all(20),
        alignment: Alignment.topLeft,
      ),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => componente));
      },
    );
  }
}
