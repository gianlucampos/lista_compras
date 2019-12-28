import 'package:flutter/material.dart';

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
    );
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
          children: <Widget>[DropDownButtonFormFieldWidget()],
        ),
      ),
    );
  }
}

//DropdownButtonFormField
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
        decoration: InputDecoration(labelText: 'Unidade'),
        value: valorSelecionado,
        isExpanded: false,
        isDense: false,
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
