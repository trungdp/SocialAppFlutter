import 'package:flutter/material.dart';
import 'package:myapp/components/rounded_text_field.dart';

class RoundedTextField extends StatelessWidget {
  final String lable;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final bool floatLable;

  const RoundedTextField({
    Key key,
    this.lable,
    this.icon = Icons.person,
    this.onChanged,
    this.floatLable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        textInputAction: TextInputAction.next,
        onSubmitted: (_) =>
            FocusScope.of(context).nextFocus(), // move focus to next
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Color.fromRGBO(241, 241, 244, 1),
            ),
          ),
          labelText: lable,
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(160, 169, 179, 1),
            fontSize: 16,
          ),
          floatingLabelBehavior: this.floatLable != null
              ? FloatingLabelBehavior.always
              : FloatingLabelBehavior.auto,
        ),
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
