import 'package:flutter/material.dart';
import 'package:myapp/components/confirm_field.dart';
import 'package:myapp/components/primary_button.dart';
import 'package:myapp/components/password_field.dart';
import 'package:myapp/components/rounded_button.dart';
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
                onPressed: () {},
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
                      locale.translate('changePassword.title'),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Color.fromRGBO(89, 176, 250, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 30.0),
                    child: Text(
                      locale.translate('login.require'),
                      style: TextStyle(
                          color: Color.fromRGBO(119, 119, 127, 1),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  PasswordField(
                    onChanged: this.onPasswordChanged,
                    text: locale.translate('changePassword.newPass'),
                  ),
                  PasswordField(
                    onChanged: this.onConfirmChanged,
                    text: locale.translate('changePassword.confirmPassword'),
                  ),
                  RoundedButton(
                    text: locale.translate('changePassword.title'),
                    color: Color.fromRGBO(78, 153, 242, 1),
                    textColor: Colors.white,
                    press: this.onSubmit,
                    iconRight: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
