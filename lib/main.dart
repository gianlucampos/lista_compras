import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_app/models/Categoria.dart';
import 'package:my_app/widgets/totalizador.dart';

import 'models/Produto.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Compra Fácil',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void criaCarrinho() {
    print('Criando carrinho');
  }

  final List<Produto> items = [
    Produto('Desodorante', 10.00, 1, Categoria('Higine')),
    Produto('Gel', 10.00, 1, Categoria('Higine')),
    Produto('Shampoo', 10.00, 1, Categoria('Higine')),
    Produto('Talco', 10.00, 1, Categoria('Higine')),
    Produto('Perfume', 10.00, 1, Categoria('Higine')),
    Produto('Condicionador', 10.00, 1, Categoria('Higine')),
    Produto('Escova', 10.00, 1, Categoria('Higine')),
    Produto('Pomada', 10.00, 1, Categoria('Higine')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Compras'),
      ),
      body: Column(
        children: [
          Text(
            'Guanabara',
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          Totalizador(),
          Container(
              height: 360,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: items.map((item) {
                    return Card(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 15,
                            ),
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Imagem',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.blue),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                item.nome,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'R\$ ${NumberFormat("00.00").format(item.preco)}',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              )),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: RaisedButton(
        child: Text('Criar carrinho'),
        onPressed: criaCarrinho,
        color: Colors.green,
        disabledColor: Colors.green,
      )
    );
  }
}
