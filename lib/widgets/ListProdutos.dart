import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_app/models/Produto.dart';

//Deve ser stateless

class ListProdutos extends StatefulWidget {
  final List<Produto> listaProdutos;
  final Function removeProduto;

  ListProdutos(this.listaProdutos, this.removeProduto);

  @override
  _ListProdutosState createState() => _ListProdutosState();
}

class _ListProdutosState extends State<ListProdutos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: widget.listaProdutos.map((item) {
            var nomeCategoria =
                item.categoria == null ? "Sem Categoria" : item.categoria.nome;
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
                      nomeCategoria,
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
                        'R\$ ${NumberFormat("#0.00").format(item.preco)}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    padding: EdgeInsets.all(10),
                    child: IconButton(
                      icon: Icon(
                        Icons.remove_shopping_cart,
                        size: 50,
                      ),
                      onPressed: () {
                        print('Removido ${item.nome} da lista');
                        widget.removeProduto(item.id);
                      },
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
