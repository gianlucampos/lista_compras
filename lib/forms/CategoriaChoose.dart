import 'package:drag_list/drag_list.dart';
import 'package:flutter/material.dart';
import '../db/db_helper.dart';
import '../models/Categoria.dart';
import '../forms/CategoriaCad.dart';

class ChooseCategoria extends StatefulWidget {
  @override
  _ChooseCategoriaState createState() => _ChooseCategoriaState();
}

class _ChooseCategoriaState extends State<ChooseCategoria> {
  List<Categoria> _categorias = List<Categoria>();

  @override
  Widget build(BuildContext context) {
    if (_categorias.isEmpty) {
      _getCategorias();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorias'),

      ),
      body: DragList<Categoria>(
        items: _categorias,
        itemExtent: MediaQuery.of(context).size.height * 0.10,
        builder: (_, item, handle) {
          return Padding(
            padding: EdgeInsets.all(1.0),
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey),
                ),
              ),
              child: Row(children: [
                handle,
                Expanded(child: Text(item.nome)),
              ]),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CategoriaCad()));
        },
      ),
    );
  }

  _getCategorias() async {
    DBHelper.retrieve('Categoria').then((categorias) {
      setState(() {
        _categorias = categorias.map((c) => Categoria.fromMap(c)).toList();
      });
    });
  }
}
