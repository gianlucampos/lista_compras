import 'package:flutter/material.dart';
import 'package:my_app/models/Categoria.dart';
import 'package:my_app/widgets/carteira.dart';
import 'package:my_app/widgets/listProdutos.dart';

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

  final List<Produto> listaItems = [
    Produto('Desodorante', 10.00, 1, Categoria('Higine')),
    Produto('Gel', 10.00, 1, Categoria('Higine')),
    Produto('Shampoo', 10.00, 1, Categoria('Higine')),
    Produto('Talco', 10.00, 1, Categoria('Higine')),
    Produto('Perfume', 10.00, 1, Categoria('Higine')),
    Produto('Condicionador', 10.00, 1, Categoria('Higine')),
    Produto('Escova', 10.00, 1, Categoria('Higine')),
    Produto('Pomada', 10.00, 1, Categoria('Higine')),
  ];


  double retornaTotalCarrinho(List<Produto> lista) {
    double total = 0.00;
    for (Produto produto in lista) {
      total += (produto.preco * produto.quantidade);
    }
    return total;
  }

  void criaCarrinho() {
    print('Criando carrinho');
    print(listaItems[3].nome);
  }

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
            Carteira(100.00, retornaTotalCarrinho(listaItems)),
            ListProdutos(listaItems),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: RaisedButton(
          child: Text('Criar carrinho'),
          onPressed: criaCarrinho,
          color: Colors.green,
          disabledColor: Colors.green,
        ));
  }
}
