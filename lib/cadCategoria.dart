import 'package:flutter/material.dart';

import './cadProduto.dart';

class CadCategoria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorias'),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.08,
              child: ListTile(
                leading: Icon(Icons.menu),
                title: Text('Frutas'),
              ),
            ),
          ),
          Divider(thickness: 0.4, color: Colors.grey),
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            child: ListTile(leading: Icon(Icons.menu), title: Text('Frutas')),
          ),
          Divider(thickness: 0.4, color: Colors.grey),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CadProduto()));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
