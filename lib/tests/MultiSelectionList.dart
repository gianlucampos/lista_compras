import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class MultiSelection extends StatefulWidget {
  @override
  _MultiSelectionState createState() => _MultiSelectionState();
}

class _MultiSelectionState extends State<MultiSelection> {
  bool longPressFlag = false;
  List<Element> indexList = [
    Element(isSelected: false),
    Element(isSelected: false),
    Element(isSelected: false)
  ];

  void longPress() {
    setState(() {
      longPressFlag = indexList.isNotEmpty;
    });
  }

  void onElementSelected(int index) {
    setState(() {
      indexList[index].isSelected = !indexList[index].isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categorias"),
      ),
      body: ListView.builder(
        itemCount: indexList.length,
        itemBuilder: (context, index) {
          return CustomWidget(
            index: index,
            isSelected: indexList[index].isSelected,
            longPressEnabled: longPressFlag,
            callback: () {
              onElementSelected(index);
              longPress();
            },
          );
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

  const CustomWidget(
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
        margin: EdgeInsets.all(5.0),
        child: ListTile(
          title: Text("Title ${widget.index}"),
          subtitle: Text("Description ${widget.index}"),
        ),
        decoration: widget.isSelected
            ? BoxDecoration(
                color: Colors.black38, border: Border.all(color: Colors.black))
            : BoxDecoration(),
      ),
    );
  }
}

class Element {
  bool isSelected;

  Element({this.isSelected});
}
