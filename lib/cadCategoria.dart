import 'package:drag_list/drag_list.dart';
import 'package:flutter/material.dart';

class CadCategoria extends StatefulWidget {
  @override
  _CadCategoriaState createState() => _CadCategoriaState();
}

class _CadCategoriaState extends State<CadCategoria> {
  @override
  Widget build(BuildContext context) {
    final List<String> items = ['Frutas', 'Legumes'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorias'),
      ),
      body: DragList<String>(
        items: items,
        itemExtent: MediaQuery
            .of(context)
            .size
            .height * 0.10,
        builder: (_, item, handle) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey),
                ),
              ),
              child: Row(children: [
                handle,
                Expanded(child: Text(item)),
              ]),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
//            Navigator.push(
//                context, MaterialPageRoute(builder: (context) => CadProduto()));
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.blue),
    );
  }
}
