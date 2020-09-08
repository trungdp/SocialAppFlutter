import 'package:flutter/material.dart';
import 'package:myapp/components/rounded_text_field.dart';

var _weightController = TextEditingController();

class ConfirmField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String text;

  const ConfirmField({Key key, this.onChanged, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            controller: _weightController,
            obscureText: true,
            onChanged: onChanged,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: this.text,
              suffixStyle: const TextStyle(
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Color.fromRGBO(241, 241, 244, 1),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
