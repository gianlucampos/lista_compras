import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CadProduto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  labelText: 'Nome', hintText: 'Digite o nome do produto'),
              keyboardType: TextInputType.number,
              controller: null,
              onSubmitted: (_) => null,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: TextField(
                    decoration:
                        InputDecoration(labelText: 'Quantidade', hintText: '1'),
                    keyboardType: TextInputType.number,
                    controller: null,
                    onSubmitted: (_) => null,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: TextField(
                    decoration:
                        InputDecoration(labelText: 'Unidade', hintText: '1'),
                    keyboardType: TextInputType.number,
                    controller: null,
                    onSubmitted: (_) => null,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: TextField(
                    decoration:
                        InputDecoration(labelText: 'Preço', hintText: '0.00'),
                    keyboardType: TextInputType.number,
                    controller: null,
                    onSubmitted: (_) => null,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Text('Inserir no Carrinho'),
                        Container(
                          color: Colors.orange,
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.add_shopping_cart),
                              Checkbox(
                                value: true,
                                onChanged: null,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Categoria'),
              keyboardType: TextInputType.number,
              controller: null,
              onSubmitted: (_) => null,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Observação'),
              keyboardType: TextInputType.text,
              controller: null,
              onSubmitted: (_) => null,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Foto'),
              keyboardType: TextInputType.text,
              controller: null,
              onSubmitted: (_) => null,
            ),
          ],
        ),
      ),
    );
  }
}
