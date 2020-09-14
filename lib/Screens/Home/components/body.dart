import 'package:flutter/material.dart';
import 'package:myapp/components/rounded_button.dart';
import 'package:myapp/components/rounded_password_field.dart';
import 'package:myapp/components/text_field_container.dart';
import 'package:myapp/localizations/AppLocalizations.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = ApplicationLocalizations.of(context);

    return Container(
      child: new Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              // Align(
              //   alignment: Alignment.topRight,
              //   child: Text(
              //     locale.translate('login.language'),
              //     style: TextStyle(
              //       fontWeight: FontWeight.w900,
              //       decoration: TextDecoration.underline,
              //       color: Color.fromRGBO(89, 175, 250, 1),
              //     ),
              //   ),
              // ),
              Container(
                margin:
                    const EdgeInsets.only(top: 70.0, left: 20.0, right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // RoundedPasswordField(onChanged: (value) {}),
                    Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: RoundedButton(
                        text: "Login",
                        color: Color.fromRGBO(78, 153, 242, 1),
                        textColor: Colors.white,
                        press: () {
                          Navigator.pushNamed(context, '/login');
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: RoundedButton(
                        text: "Register",
                        color: Color.fromRGBO(78, 153, 242, 1),
                        textColor: Colors.white,
                        press: () {
                          Navigator.pushNamed(context, '/register-one');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
