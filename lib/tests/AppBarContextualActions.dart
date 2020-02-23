import 'package:flutter/material.dart';

class AppBarContextual extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyPage());
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  static final AppBar _defaultBar = AppBar(
    title: Text('Inbox'),
    actions: <Widget>[Icon(Icons.search), Icon(Icons.more_vert)],
    backgroundColor: Colors.black,
  );

  static final AppBar _selectBar = AppBar(
    title: Text('1'),
    actions: <Widget>[
      Icon(Icons.edit),
      Icon(Icons.delete),
    ],
    backgroundColor: Colors.deepPurple,
  );

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
