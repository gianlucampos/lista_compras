import 'package:flutter/material.dart';

//DropdownButtonFormField possui decoration pra por LabelText
class DropDownButtonFormFieldWidget extends StatefulWidget {
  @override
  _DropDownButtonFormFieldWidgetState createState() =>
      _DropDownButtonFormFieldWidgetState();
}

class _DropDownButtonFormFieldWidgetState
    extends State<DropDownButtonFormFieldWidget> {
  String valorSelecionado = 'One';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
        decoration: InputDecoration(
          isDense: true,
          labelText: 'Unidade',
          alignLabelWithHint: true,
        ),
        value: valorSelecionado,
        isDense: true,
        onChanged: (String valor) {
          setState(() {
            valorSelecionado = valor;
          });
        },
        elevation: 4,
        items: <String>['One', 'Two', 'Free', 'Four']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList());
  }
}
