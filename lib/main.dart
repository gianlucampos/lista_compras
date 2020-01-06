import 'package:flutter/material.dart';

import './telaInicio.dart';
import 'tests/testeWidgets.dart';

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
      home: TelaInicio(),
      routes: {
        'Testes': (context) => TesteApp(),
      },
    );
  }
}
