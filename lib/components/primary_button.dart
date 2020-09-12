import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/localizations/app_localizations.dart';
import 'package:myapp/presentation/my_flutter_app_icons.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function onClick;
  final Color color, textColor;
  const PrimaryButton(
      {Key key,
      this.text,
      this.onClick,
      this.color = kPrimaryColor,
      this.textColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      width: size.width * 0.8,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: kPrimaryColor.withOpacity(0.20))
          ],
        ),
        child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            color: color,
            onPressed: onClick,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Icon(
                  //   Icons.arrow_forward,
                  //   color: color,
                  // ),
                  Text(
                    text,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Icon(
                  //   Icons.arrow_forward,
                  //   color: Colors.white,
                  // ),
                ])),
      ),
    );
  }
}
