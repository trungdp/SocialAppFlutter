import 'package:flutter/material.dart';
import 'package:myapp/components/password_field.dart';
import 'package:myapp/components/rounded_button.dart';
import 'package:myapp/components/text_field_container.dart';
import 'package:myapp/localizations/AppLocalizations.dart';

class Body extends StatelessWidget {
  final Function onPasswordChanged;
  final Function onConfirmChanged;
  final Function onSubmit;
  const Body(
      {Key key, this.onPasswordChanged, this.onConfirmChanged, this.onSubmit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = ApplicationLocalizations.of(context);
    return Container(
        child: new Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: new Icon(Icons.clear),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      locale.translate('register.title'),
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                        color: Color.fromRGBO(89, 176, 250, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: Text(
                      locale.translate('register.require'),
                      style: TextStyle(
                          color: Color.fromRGBO(119, 119, 127, 1),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  RoundedTextField(
                    lable: locale.translate('register.name'),
                    onChanged: (value) {},
                  ),
                  RoundedTextField(
                    lable: locale.translate('register.email'),
                    onChanged: (value) {},
                  ),
                  PasswordField(
                    text: locale.translate('register.password'),
                    onChanged: this.onPasswordChanged,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: RoundedButton(
                      text: locale.translate('btn.next'),
                      textColor: Colors.white,
                      press: this.onSubmit,
                      iconRight: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
