import 'package:flutter/material.dart';
import 'package:my_app/widgets/comprado.dart';
import 'package:my_app/widgets/restante.dart';
import 'package:my_app/widgets/total.dart';

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
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 100,
              child: Card(
                color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Total(),
                    Comprado(),
                    Restante(),
                  ],
                ),
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
