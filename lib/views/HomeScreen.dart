import 'package:flutter/material.dart';

import '../forms/ProdutoCad.dart';
import '../widgets/Totalizador.dart';

class TelaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Lista'),
      ),
      body: Column(
        children: [],
      ),
      floatingActionButton: Align(
        alignment: Alignment(1.00, 0.75),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CadProduto()));
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
        ),
      ),
      bottomSheet: Container(
        color: Colors.green,
        height: MediaQuery.of(context).size.height * 0.1,
        child: Totalizador(),
      ),
    );
  }
}
