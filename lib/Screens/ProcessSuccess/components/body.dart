import 'package:flutter/material.dart';

class Body extends StatelessWidget {

  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: new Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Thành công",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0, left: 25.0, right: 25.0),
              child: Text(
                "Chúc mừng bạn đã đổi mật khẩu thành công",
                // "Chúc mừng bạn đã đăng ký tài khoản thành công",
                style: TextStyle(
                  color: Color.fromRGBO(119, 119, 127, 1),
                  fontSize: 16
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
