import 'package:flutter/material.dart';
import 'package:myapp/components/rounded_button.dart';
import 'package:myapp/components/rounded_password_field.dart';
import 'package:myapp/components/text_field_container.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: new Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Ngôn ngữ",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  decoration: TextDecoration.underline,
                  color: Color.fromRGBO(89, 175, 250, 1),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 70.0, left: 15),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Đăng nhập",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    color: Color.fromRGBO(89, 176, 250, 1),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0, bottom: 50),
              child: Text(
                "Vui lòng điền đầy đủ các thông tin bên dưới",
                style: TextStyle(
                    color: Color.fromRGBO(119, 119, 127, 1),
                    fontWeight: FontWeight.bold),
              ),
            ),
            RoundedTextField(hintText: 'EMAIL', onChanged: (value) {}),
            RoundedPasswordField(onChanged: (value) {}),
            RoundedButton(
              text: 'Đăng nhập',
              color: Color.fromRGBO(78, 153, 242, 1),
              textColor: Colors.white,
              press: () {},
            ),
            Text(
              'hoặc',
              style: TextStyle(
                color: Color.fromRGBO(177, 176, 186, 1),
              ),
            ),
            RoundedButton(
              text: 'Đăng nhập bằng Facebook',
              color: Color.fromRGBO(66, 103, 178, 1),
              textColor: Colors.white,
              press: () {},
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
                  text: 'Bạn chưa có tài khoản?  ',
                  style: TextStyle(
                      color: Color.fromRGBO(160, 175, 185, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontFamily: 'Nunito'),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Đăng ký ngay',
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
    ));
  }
}
