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

//      body: ListView(
//        children: <Widget>[
//          GestureDetector(
//            child: Container(
//              height: MediaQuery.of(context).size.height * 0.08,
//              child: ListTile(
//                leading: Icon(Icons.menu),
//                title: Text('Frutas'),
//              ),
//            ),
//          ),
//          Divider(thickness: 0.4, color: Colors.grey),
//          Container(
//            height: MediaQuery.of(context).size.height * 0.08,
//            child: ListTile(leading: Icon(Icons.menu), title: Text('Frutas')),
//          ),
//          Divider(thickness: 0.4, color: Colors.grey),
//        ],
//      ),

      body: DragList<String>(
        items: items,
        itemExtent: 80,
        builder: (_, item, handle) {
          return Container(
            height: 80,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                child: Row(children: [
                  handle,
                  Expanded(child: Text(item)),
                ]),
              ),
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
