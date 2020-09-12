
import 'package:flutter/material.dart';
import 'package:myapp/components/confirm_field.dart';
import 'package:myapp/components/dropdown.dart';
import 'package:myapp/components/primary_button.dart';
import 'package:myapp/components/password_field.dart';
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
    // bool _throwShotAway = false;
    // final locale = AppLocalizations.of(context);
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
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      'Thông tin liên hệ của bạn',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Color.fromRGBO(89, 176, 250, 1),
                      ),
                    ),
                  ),
                  DropDownBtn(text: 'QUỐC GIA'),
                  DropDownBtn(text: 'THÀNH PHỐ'),
                  DropDownBtn(text: 'QUẬN/HUYỆN'),
                  ConfirmField(text: 'ĐỊA CHỈ *', onChanged: (value) {}),
                  ConfirmField(text: 'SỐ ĐIỆN THOẠI *', onChanged: (value) {}),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Đồng ý với',
                          style: TextStyle(
                                  color: Color.fromRGBO(94, 97, 108, 1),
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14,
                                  fontFamily: 'Nunito'),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' điều khoản sử dụng',
                              style: TextStyle(
                                  color: Color.fromRGBO(94, 97, 108, 1),
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14,
                                  fontFamily: 'Nunito'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  PrimaryButton(
                    text: 'Hoàn tất đăng ký',
                    color: Color.fromRGBO(78, 153, 242, 1),
                    textColor: Colors.white,
                    onClick: this.onSubmit,
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
