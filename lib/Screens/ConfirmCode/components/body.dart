import 'package:flutter/material.dart';
import 'package:myapp/components/activeCode_filed.dart';
import 'package:myapp/components/confirm_field.dart';
import 'package:myapp/components/primary_button.dart';
import 'package:myapp/components/rounded_button.dart';
import 'package:myapp/components/password_field.dart';
import 'package:myapp/components/text_field_container.dart';
import 'package:myapp/localizations/AppLocalizations.dart';

class Body extends StatelessWidget {
  final Function onPasswordChanged;
  final Function onConfirmChanged;
  final Function onSubmit;
  const Body(
      {Key key, this.onPasswordChanged, this.onConfirmChanged, this.onSubmit})
      : super(key: key);

  String errorMessage() {
    return "";
  }

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
                )),
            Container(
              margin: const EdgeInsets.only(top: 70.0, left: 15),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  ApplicationLocalizations.of(context)
                      .translate("requireSuccess"),
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0, bottom: 50),
              child: Text(
                locale.translate("activeText"),
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.normal),
              ),
            ),
            RoundedTextField(
              hintText: locale.translate("activeCode"),
              onChanged: (value) {},
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 0, 10),
              child: Visibility(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    locale.translate('error'),
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.red[700],
                    ),
                  ),
                ),
                visible: this.errorMessage() != "",
              ),
            ),
            PrimaryButton(
              text: locale.translate("confirmCode"),
              color: Color.fromRGBO(78, 153, 242, 1),
              textColor: Colors.white,
              onClick: this.onSubmit,
            ),
            FlatButton(
              color: Colors.transparent,
              onPressed: () {},
              child: Text(
                locale.translate("goBack"),
                style: TextStyle(color: Colors.black87, fontSize: 16),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
