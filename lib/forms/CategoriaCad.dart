import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../db/db_helper.dart';
import '../models/Categoria.dart';
import 'CategoriaChoose.dart';

class CategoriaCad extends StatelessWidget {
  final _categoria = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nova Categoria'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              if (_formKey.currentState.validate()) {
                //  print(_categoria.text);
                final categoria = Categoria(nome: _categoria.text);
                DBHelper.create('Categoria', categoria.toMap());
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChooseCategoria()));
              }
            },
          )
        ],
      ),
      body: FormCategoria(_categoria, _formKey),
    );
  }
}

class FormCategoria extends StatefulWidget {
  final TextEditingController categoria;
  final GlobalKey<FormState> formKey;

  FormCategoria(this.categoria, this.formKey);

  @override
  FormCategoriaState createState() {
    return FormCategoriaState();
  }
}

class FormCategoriaState extends State<FormCategoria> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: widget.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: widget.categoria,
              decoration: InputDecoration(labelText: 'Nome'),
              validator: (value) {
                return value.trim().isEmpty
                    ? 'Digite o nome da categoria'
                    : null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
