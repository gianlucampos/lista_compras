import 'package:flutter/material.dart';

class AppBarContextual extends StatefulWidget {
  @override
  _AppBarContextualState createState() => _AppBarContextualState();
}

AppBar _defaultBar = AppBar(
  title: Text('Categorias'),
  backgroundColor: Colors.green,
);

AppBar _selectBar = AppBar(
  actions: <Widget>[
    IconButton(icon: Icon(Icons.edit), onPressed: () {}),
    IconButton(icon: Icon(Icons.delete), onPressed: () {})
  ],
  backgroundColor: Colors.teal,
);

class _AppBarContextualState extends State<AppBarContextual> {
  AppBar _appBar = _defaultBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: Center(
        child: RaisedButton(
          child: Text('Switch!'),
          onPressed: () {
            setState(() {
              _appBar = _appBar == _defaultBar ? _selectBar : _defaultBar;
            });
          },
        ),
      ),
    );
  }
}
