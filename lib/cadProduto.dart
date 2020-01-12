import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:lista_compras/db/db_helper.dart';
import 'package:lista_compras/models/Categoria.dart';
import 'package:lista_compras/widgets/DropDownCategoria.dart';
import 'package:lista_compras/widgets/DropDownUnidade.dart';

class CadProduto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Categoria categoria = new Categoria(id: '1', nome: 'Higiene');
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    labelText: 'Nome', hintText: 'Digite o nome do produto'),
                keyboardType: TextInputType.number,
                controller: null,
                onSubmitted: (_) => null,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.40,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Quantidade', hintText: '1'),
                      keyboardType: TextInputType.number,
                      controller: null,
                      onSubmitted: (_) => null,
                    ),
                  ),
                  Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.48,
                      child: DropDownUnidade()),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.40,
                    child: TextField(
                      decoration:
                      InputDecoration(labelText: 'Preço', hintText: '0.00'),
                      keyboardType: TextInputType.number,
                      controller: null,
                      onSubmitted: (_) => null,
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Text('Inserir no Carrinho'),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(Icons.add_shopping_cart, size: 30),
                            CheckBoxWidget(),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.70,
                      child: DropDownCategoria()),
                  Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.grey,
                    child: InkWell(
                      child: Icon(Icons.add, size: 50),
                      onTap: () =>
                          DBHelper.create('categoria', {
                            'id': categoria.id,
                            'nome': categoria.nome,
                          }),
//                          DBHelper.insert(categoria),
                    ),
                  ),
                ],
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Observação'),
                keyboardType: TextInputType.text,
                controller: null,
                onSubmitted: (_) => null,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Foto'),
                keyboardType: TextInputType.text,
                controller: null,
                onSubmitted: (_) => null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CheckBoxWidget extends StatefulWidget {
  @override
  _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      tristate: false,
      value: isChecked,
      onChanged: (value) {
        setState(() {
          isChecked = value;
        });
      },
    );
  }
}
