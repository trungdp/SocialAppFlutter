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
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  locale.translate('login.language'),
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.underline,
                    color: Color.fromRGBO(89, 175, 250, 1),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(top: 70.0, left: 20.0, right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        locale.translate('login.title'),
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                          color: Color.fromRGBO(89, 176, 250, 1),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 30.0),
                      child: Text(
                        locale.translate('login.require'),
                        style: TextStyle(
                            color: Color.fromRGBO(119, 119, 127, 1),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    RoundedTextField(
                      lable: locale.translate('login.email'),
                      onChanged: (value) {},
                    ),
                    RoundedPasswordField(onChanged: (value) {}),
                    Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: RoundedButton(
                        text: locale.translate('login.title'),
                        color: Color.fromRGBO(78, 153, 242, 1),
                        textColor: Colors.white,
                        press: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        locale.translate('login.or'),
                        style: TextStyle(
                          color: Color.fromRGBO(177, 176, 186, 1),
                        ),
                      ),
                    ),
                    RoundedButton(
                      text: locale.translate('login.facebook'),
                      color: Color.fromRGBO(66, 103, 178, 1),
                      textColor: Colors.white,
                      press: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          new Positioned(
            bottom: 0,
            left: 40,
            child: Container(
              child: Align(
                alignment: Alignment.center,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: locale.translate('login.titleFooter'),
                    style: TextStyle(
                        color: Color.fromRGBO(160, 175, 185, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'Nunito'),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' ' + locale.translate('login.registerNow'),
                        style: TextStyle(
                            color: Color.fromRGBO(94, 97, 108, 1),
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w900,
                            fontSize: 14,
                            fontFamily: 'Nunito'),
                      ),
                      // can add more TextSpans here...
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
