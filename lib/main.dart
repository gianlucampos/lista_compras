import 'package:flutter/material.dart';

import 'tests/mainTest.dart';
import 'views/HomeScreen.dart';

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
//      home: TelaInicio(),
      home: TelaTeste(),
      routes: {
        'Testes': (context) => TelaTeste(),
        'Main App': (context) => TelaInicio(),
      },
    );
  }
}
