import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/Screens/Login/components/background.dart';
import 'package:myapp/components/rounded_button.dart';
import 'package:myapp/components/rounded_password_field.dart';
import 'package:myapp/components/text_field_container.dart';
import 'package:myapp/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset('assets/icons/login.svg'),
          RoundedTextField(hintText: 'Your Email', onChanged: (value) {}),
          RoundedPasswordField(onChanged: (value) {}),
          RoundedButton(
            text: 'LOGIN',
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {},
          )
        ],
      ),
    );
  }
}
