import 'package:flutter/material.dart';
import 'package:myapp/components/dropdown.dart';
import 'package:myapp/components/rounded_button.dart';
import 'package:myapp/components/text_field_container.dart';
import 'package:myapp/localizations/AppLocalizations.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
    this.onPasswordChanged,
    this.onConfirmChanged,
    this.onSubmit,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();

  final Function onPasswordChanged;
  final Function onConfirmChanged;
  final Function onSubmit;
}

class _BodyState extends State<Body> {
  bool valueCheck = true;

  @override
  Widget build(BuildContext context) {
    final locale = ApplicationLocalizations.of(context);
    List<Map> listCourty = <Map>[
      {'id': 0, 'name': 'Chọn quốc gia'},
      {'id': 1, 'name': 'Việt Nam'},
      {'id': 2, 'name': 'Hàn Quốc'},
      {'id': 3, 'name': 'Nhật bản'}
    ];

    List<Map> listCity = <Map>[
      {'id': 0, 'name': 'Chọn thành phố'},
      {'id': 1, 'name': 'Đà Nẵng'},
      {'id': 2, 'name': 'Hồ Chí Minh'},
      {'id': 3, 'name': 'Cần Thơ'}
    ];

    List<Map> listDistrictWard = <Map>[
      {'id': 0, 'name': 'Chọn Quận/Huyện'},
      {'id': 1, 'name': 'Sơn Trà'},
      {'id': 2, 'name': 'Thủ Đức'},
      {'id': 3, 'name': 'Ba Đình'}
    ];

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
                  Text(
                    locale.translate('register.infoContact'),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromRGBO(89, 176, 250, 1),
                    ),
                  ),
                  Drowdown(
                      text: locale.translate('register.country'),
                      list: listCourty,
                      value: 1),
                  Drowdown(
                      text: locale.translate('register.city'),
                      list: listCity,
                      value: 1),
                  Drowdown(
                      text: locale.translate('register.districtWard'),
                      list: listDistrictWard,
                      value: 1),
                  RoundedTextField(
                      lable: locale.translate('register.address'),
                      onChanged: (value) {}),
                  RoundedTextField(
                      lable: locale.translate('register.phone'),
                      onChanged: (value) {}),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Checkbox(
                    value: valueCheck,
                    onChanged: (bool value) {
                      setState(() {
                        valueCheck = value;
                      });
                    },
                  ),
                  RichText(
                    text: TextSpan(
                      text: locale.translate('register.agreeWith') + ' ',
                      style: TextStyle(
                          color: Color.fromRGBO(94, 97, 108, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Nunito'),
                      children: <TextSpan>[
                        TextSpan(
                          text: locale.translate('register.termsOfUse'),
                          style: TextStyle(
                            color: Color.fromRGBO(94, 97, 108, 1),
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: 'Nunito',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            RoundedButton(
              text: locale.translate('register.btnFinish'),
              textColor: Colors.white,
              press: widget.onSubmit,
            ),
          ],
        ),
      ],
    ));
  }
}
