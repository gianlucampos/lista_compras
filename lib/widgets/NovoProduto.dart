import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NovoProduto extends StatefulWidget {
  final Function addProduto;

  NovoProduto(this.addProduto);

  @override
  _NovoProdutoState createState() => _NovoProdutoState();
}

class _NovoProdutoState extends State<NovoProduto> {
  final _nomeProduto = TextEditingController();
  final _precoProduto = TextEditingController();
  final _unidadeProduto = TextEditingController();

//Pensar em como adicionar uma categoria

  void _submitProduto() {
    final nomeDigitado = _nomeProduto.text;
    final precoDigitado = double.parse(_precoProduto.text);
    final unidadeDigitada = double.parse(_unidadeProduto.text);

    widget.addProduto(
      Random().toString(),
      nomeDigitado,
      precoDigitado,
      unidadeDigitada,
      null,
    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Nome'),
              controller: _nomeProduto,
              onSubmitted: (_) => _submitProduto(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Preço'),
              keyboardType: TextInputType.number,
              controller: _precoProduto,
              onSubmitted: (_) => _submitProduto(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Unidade(s)'),
              keyboardType: TextInputType.number,
              controller: _unidadeProduto,
              onSubmitted: (_) => _submitProduto(),
            ),
            RaisedButton(
              child: Text('Adicionar Produto'),
              color: Theme.of(context).primaryColor,
              textColor: Theme.of(context).textTheme.button.color,
              onPressed: _submitProduto,
            ),
          ],
        ),
      ),
    );
  }
}
