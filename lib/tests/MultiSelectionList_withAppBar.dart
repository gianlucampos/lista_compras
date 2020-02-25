import 'package:flutter/material.dart';

class MultiSelectionAppBar extends StatefulWidget {
  @override
  _MultiSelectionAppBarState createState() => _MultiSelectionAppBarState();
}

class _MultiSelectionAppBarState extends State<MultiSelectionAppBar> {
  bool selecaoAtivada = false;
  bool multiselecionado = false;

  List<Element> elementos = [
    Element(isSelected: false),
    Element(isSelected: false),
    Element(isSelected: false)
  ];

  void longPress() {
    setState(() {
      selecaoAtivada = elementos.any((e) => e.isSelected);
    });
  }

  void onElementSelected(int index) {
    setState(() {
      elementos[index].isSelected = !elementos[index].isSelected;
      multiselecionado = elementos.where((e) => e.isSelected).length > 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: selecaoAtivada
          ? AppBar(
              actions: multiselecionado
                  ? [IconButton(icon: Icon(Icons.delete), onPressed: () {})]
                  : [
                      IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                      IconButton(icon: Icon(Icons.delete), onPressed: () {})
                    ],
              backgroundColor: Colors.teal)
          : AppBar(title: Text('Categorias')),
      body: ListView.separated(
        itemCount: elementos.length,
        itemBuilder: (context, index) {
          return CustomWidget(
            index: index,
            isSelected: elementos[index].isSelected,
            longPressEnabled: selecaoAtivada,
            callback: () {
              onElementSelected(index);
              longPress();
            },
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 2,
            color: Colors.grey,
          );
        },
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  final int index;
  final bool isSelected;
  final bool longPressEnabled;
  final VoidCallback callback;

  CustomWidget(
      {Key key,
      this.index,
      this.isSelected,
      this.longPressEnabled,
      this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        callback();
      },
      onTap: () {
        if (longPressEnabled) {
          callback();
        }
      },
      child: Container(
        child: ListTile(
          leading: Icon(Icons.format_align_justify),
          title: Text("Categoria $index"),
        ),
        decoration: isSelected
            ? BoxDecoration(color: Colors.green[300])
            : BoxDecoration(),
      ),
    );
  }
}

class Element {
  bool isSelected;

  Element({this.isSelected});
}
