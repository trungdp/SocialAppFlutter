import 'package:flutter/material.dart';
import 'package:myapp/components/rounded_text_field.dart';

class RoundedTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedTextField(
      {Key key, this.hintText, this.icon = Icons.person, this.onChanged})
      : super(key: key);

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
              width: 2,
              color: Color.fromRGBO(241, 241, 244, 1),
            ),
          ),
          labelText: hintText,
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(160, 169, 179, 1),
          ),
        ),
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  // _fieldFocusChange(
  //     BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  //   currentFocus.unfocus();
  //   FocusScope.of(context).requestFocus(nextFocus);
  // }
}
