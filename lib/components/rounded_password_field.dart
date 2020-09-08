import 'package:flutter/material.dart';
import 'package:myapp/components/rounded_text_field.dart';

var _weightController = TextEditingController();

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({Key key, this.onChanged}) : super(key: key);

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
              hintText: 'MẬT KHẨU *',
              // icon: Icon(
              //   Icons.person,
              //   color: kPrimaryColor,
              // ),
              suffixText: 'Quên mật khẩu?',
              suffixStyle: const TextStyle(
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
              // suffixStyle:
              //     TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Color.fromRGBO(241, 241, 244, 1),
                ),
              ),
            ),
          ),
        ),
        // Positioned(child: Text('Quên mật khẩu'), top: 0)
      ],
    ));
  }
}
