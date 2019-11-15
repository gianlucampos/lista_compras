import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/Produto.dart';

class ListProdutos extends StatelessWidget {
  final List<Produto> listaProdutos;
  final Function removeProduto;

  ListProdutos(this.listaProdutos, this.removeProduto);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            elevation: 5,
            margin: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 5,
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: Padding(
                  padding: EdgeInsets.all(6),
                  child: FittedBox(
                    child: Text(
                        'R\$ ${NumberFormat("#0.00").format(
                            listaProdutos[index].preco)}'),
                  ),
                ),
              ),
              title: Text(
                listaProdutos[index].nome,
                style: Theme
                    .of(context)
                    .textTheme
                    .title,
              ),
              subtitle: Text(
                'Higiene',
              ),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                color: Theme
                    .of(context)
                    .errorColor,
                onPressed: () => removeProduto(listaProdutos[index].id),
              ),
            ),
          );
        },
        itemCount: listaProdutos.length,
      ),
    );
  }
}
