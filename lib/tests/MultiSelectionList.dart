import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class MultiSelection extends StatefulWidget {
  @override
  _MultiSelectionState createState() => _MultiSelectionState();
}

class _MultiSelectionState extends State<MultiSelection> {
  bool selecaoAtivada = false;
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
    });
  }

  @override
  Widget build(BuildContext context) {
    print(selecaoAtivada);
    return Scaffold(
      appBar: AppBar(
        title: Text("Categorias"),
      ),
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
          return Divider(height: 1, color: Colors.grey,);
        },
      ),
    );
  }
}

class CustomWidget extends StatefulWidget {
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
  _CustomWidgetState createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        widget.callback();
      },
      onTap: () {
        if (widget.longPressEnabled) {
          widget.callback();
        }
      },
      child: Container(
        child: ListTile(
          leading: Icon(Icons.format_align_justify),
          title: Text("Categoria ${widget.index}"),
        ),
        decoration: widget.isSelected
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
