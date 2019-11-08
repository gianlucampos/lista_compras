import 'package:flutter/material.dart';
import 'package:my_app/models/Categoria.dart';
import 'package:my_app/widgets/Carteira.dart';
import 'package:my_app/widgets/ListProdutos.dart';
import 'package:my_app/widgets/NovoProduto.dart';

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
    Produto('1', 'Desodorante', 10.00, 1, Categoria('Higine')),
    Produto('2', 'Gel', 10.00, 1, Categoria('Higine')),
//    Produto('Shampoo', 10.00, 1, Categoria('Higine')),
//    Produto('Talco', 10.00, 1, Categoria('Higine')),
//    Produto('Perfume', 10.00, 1, Categoria('Higine')),
//    Produto('Condicionador', 10.00, 1, Categoria('Higine')),
//    Produto('Escova', 10.00, 1, Categoria('Higine')),
//    Produto('Pomada', 10.00, 1, Categoria('Higine')),
  ];

//Colocar isso dentro do widget Totalizador
  double retornaTotalCarrinho(List<Produto> lista) {
    double total = 0.00;
    for (Produto produto in lista) {
      total += (produto.preco * produto.quantidade);
    }
    return total;
  }

  void addItemCarrinho(String id, String nome, double preco, double quantidade,
      Categoria categoria) {
    final novoProduto = Produto(id, nome, preco, quantidade, categoria);
    setState(() {
      listaItems.add(novoProduto);
    });
  }

  void criaItem(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: NovoProduto(addItemCarrinho),
            behavior: HitTestBehavior.opaque,
          );
        });
  }

  void removeProduto(String id) {
    setState(() {
      listaItems.removeWhere((tx) => tx.id == id);
    });
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
            ListProdutos(listaItems,removeProduto),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: RaisedButton(
          child: Text('Criar carrinho'),
          onPressed: () => criaItem(context),
          color: Colors.green,
          disabledColor: Colors.green,
        ));
  }
}
