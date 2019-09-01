import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Compras'),
      ),
      body: Column(
        children: [
          Text(
            'Guanabara:',
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            child: Card(
              color: Colors.green,
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text('Total'),
                    width: 100,
                    height: 100,
                  ),
                  Spacer(),
                  Container(
                    child: Text('Comprado'),
                    color: Colors.green,
                    width: 100,
                    height: 100,
                  ),
                  Spacer(),
                  Container(
                    child: Text('Restante'),
                    color: Colors.green,
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
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
