import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../forms/ProdutoCad.dart';
import '../main.dart';

void main() => runApp(TesteApp());

class TesteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Compra Fácil',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: TelaTeste(),
        routes: {
          'Main App': (context) => MyApp(),
          'Cadastro de Produtos': (context) => CadProduto(),
        });
  }
}

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
            InkWell(
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
          ],
        ),
      ),
    );
  }
}

//DropdownButtonFormField possui decoration pra por LabelText
class DropDownButtonFormFieldWidget extends StatefulWidget {
  @override
  _DropDownButtonFormFieldWidgetState createState() =>
      _DropDownButtonFormFieldWidgetState();
}

class _DropDownButtonFormFieldWidgetState
    extends State<DropDownButtonFormFieldWidget> {
  String valorSelecionado = 'One';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
        decoration: InputDecoration(
          isDense: true,
          labelText: 'Unidade',
          alignLabelWithHint: true,
        ),
        value: valorSelecionado,
        isDense: true,
        onChanged: (String valor) {
          setState(() {
            valorSelecionado = valor;
          });
        },
        elevation: 4,
        items: <String>['One', 'Two', 'Free', 'Four']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList());
  }
}
