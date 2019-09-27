import 'package:flutter/material.dart';

class NovoProduto extends StatefulWidget {
  final Function addProduto;

  NovoProduto(this.addProduto);

  @override
  _NovoProdutoState createState() => _NovoProdutoState();
}

class _NovoProdutoState extends State<NovoProduto> {
  final _nomeProduto = TextEditingController();
  final _precoProduto = TextEditingController();
  final _unidadeProduto = TextEditingController();
//Pensar em como adicionar uma categoria

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
