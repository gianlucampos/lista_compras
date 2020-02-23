import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class MultiSelection extends StatefulWidget {
  @override
  _MultiSelectionState createState() => new _MultiSelectionState();
}

class _MultiSelectionState extends State<MultiSelection> {
  bool longPressFlag = false;
  List<Element> indexList = new List();
  int selectedCount = 0;

  void longPress() {
    setState(() {
      if (indexList.isEmpty) {
        longPressFlag = false;
      } else {
        longPressFlag = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < 50; i++) {
      indexList.add(Element(isSelected: false));
    }

    return new Scaffold(
      appBar: AppBar(
        title: Text("Title"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Center(child: Text("$selectedCount")),
          ),
        ],
      ),
      body: new ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return new CustomWidget(
            isSelected: indexList[index].isSelected,
            index: index,
            longPressEnabled: longPressFlag,
            callback: () {
              onElementSelected(index);
              if (indexList.contains(index)) {
                indexList.remove(index);
              } else {
                indexList.add(Element());
              }
              longPress();
            },
          );
        },
      ),
    );
  }

  onElementSelected(int index) {
    setState(() {
      if (indexList[index].isSelected)
        selectedCount--;
      else
        selectedCount++;
      indexList[index].isSelected = !indexList[index].isSelected;
    });
  }
}

class CustomWidget extends StatefulWidget {
  final int index;
  final bool longPressEnabled;
  final VoidCallback callback;
  final bool isSelected;

  const CustomWidget(
      {Key key,
      this.index,
      this.longPressEnabled,
      this.callback,
      this.isSelected})
      : super(key: key);

  @override
  _CustomWidgetState createState() => new _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onLongPress: () {
        widget.callback();
      },
      onTap: () {
        if (widget.longPressEnabled) {
          widget.callback();
        }
      },
      child: new Container(
        margin: new EdgeInsets.all(5.0),
        child: new ListTile(
          title: new Text("Title ${widget.index}"),
          subtitle: new Text("Description ${widget.index}"),
        ),
        decoration: widget.isSelected
            ? new BoxDecoration(
                color: Colors.black38,
                border: new Border.all(color: Colors.black))
            : new BoxDecoration(),
      ),
    );
  }
}

class Element {
  Element({this.isSelected});

  bool isSelected;
}
