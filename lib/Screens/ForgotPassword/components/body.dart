import 'package:flutter/material.dart';
import 'package:myapp/components/primary_button.dart';
import 'package:myapp/components/text_field_container.dart';
import 'package:myapp/localizations/app_localizations.dart';

class Body extends StatelessWidget {
  final Function onPasswordChanged;
  final Function onConfirmChanged;
  final Function onSubmit;
  const Body(
      {Key key, this.onPasswordChanged, this.onConfirmChanged, this.onSubmit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
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
                )),
            Container(
              margin: const EdgeInsets.only(top: 70.0, left: 15),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  locale.forgotPassText,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    color: Color.fromRGBO(89, 176, 250, 1),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0, bottom: 30),
              child: Text(
                locale.requiredEmail,
                style: TextStyle(
                    color: Color.fromRGBO(119, 119, 127, 1),
                    fontWeight: FontWeight.bold),
              ),
            ),
            RoundedTextField(
              lable: "EMAIL",
              onChanged: (value) {},
            ),
            PrimaryButton(
              text: locale.forgotPassText,
              color: Color.fromRGBO(78, 153, 242, 1),
              textColor: Colors.white,
              onClick: this.onSubmit,
            ),
          ],
        ),
      ],
    ));
  }
}
