import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:lista_compras/forms/ChooseCategoria.dart';

//Tornar apenas o widget stateful ao inves da tela
class CadCategoria extends StatefulWidget {
  @override
  _CadCategoriaState createState() => _CadCategoriaState();
}

class _CadCategoriaState extends State<CadCategoria> {
  final categoria = TextEditingController();

  @override
  void dispose() {
    categoria.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool _validar = false;

    return Scaffold(
      appBar: AppBar(
        title: Text('Nova Categoria'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              setState(() {
                categoria.text.isEmpty ? _validar = true : _validar = false;
              });
              if (categoria.text.isNotEmpty) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChooseCategoria()));
              }
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: categoria,
          decoration: InputDecoration(
              labelText: 'Nome',
              errorText: _validar ? 'Digite o nome da categoria' : null),
        ),
      ),
    );
  }
}
