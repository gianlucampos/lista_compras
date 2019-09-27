import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_app/models/Produto.dart';

class ListProdutos extends StatelessWidget {
  final List<Produto> listaProdutos;

  ListProdutos(this.listaProdutos);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 360,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: listaProdutos.map((item) {
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
        ));
  }
}
