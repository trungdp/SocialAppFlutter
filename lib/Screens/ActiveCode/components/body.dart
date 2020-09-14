import 'package:flutter/material.dart';
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

  String errorMessage() {
    return "";
  }

  @override
  Widget build(BuildContext context) {
    final locale = ApplicationLocalizations.of(context);
    Size size = MediaQuery.of(context).size;
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
              margin: const EdgeInsets.only(left: 25.0, right: 25.0),
              height: size.height * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    locale.translate("requireSuccess.title"),
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    locale.translate("requireSuccess.require"),
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  RoundedTextField(
                    lable: locale.translate("requireSuccess.activeCode"),
                    onChanged: (value) {},
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(vertical: 15.0),
                  //   child: RichText(
                  //     textAlign: TextAlign.left,
                  //     text: TextSpan(
                  //       text: locale.translate('requireSuccess.error'),
                  //       style: TextStyle(
                  //         color: Colors.red[200],
                  //         fontWeight: FontWeight.bold,
                  //         fontSize: 14,
                  //       ),
                  //       children: <TextSpan>[
                  //         TextSpan(
                  //           text:
                  //               ' ' + locale.translate('requireSuccess.wrong'),
                  //           style: TextStyle(
                  //             color: Colors.black54,
                  //             fontWeight: FontWeight.bold,
                  //             fontSize: 14,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  RoundedButton(
                    text: locale.translate("requireSuccess.confirm"),
                    color: Color.fromRGBO(78, 153, 242, 1),
                    textColor: Colors.white,
                    press: this.onSubmit,
                    iconRight: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      locale.translate("requireSuccess.goBack"),
                      style: TextStyle(color: Colors.black87, fontSize: 16),
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
