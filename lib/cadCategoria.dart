import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CadCategoria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nova Categoria'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          decoration: InputDecoration(
              labelText: 'Nome', hintText: 'Digite o nome da categoria'),
          keyboardType: TextInputType.number,
          controller: null,
          onSubmitted: (_) => null,
        ),
      ),
    );
  }
}
