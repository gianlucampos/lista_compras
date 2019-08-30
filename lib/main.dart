import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

  void criaCarrinho(){
    print('Criando carrinho');
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
            'Escolha uma das opções abaixo:',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          RaisedButton(
            child: Text('Criar carrinho'),
            onPressed: criaCarrinho,
            color: Colors.green,
            disabledColor: Colors.green,
          )
        ],
      ),
    );
  }
}