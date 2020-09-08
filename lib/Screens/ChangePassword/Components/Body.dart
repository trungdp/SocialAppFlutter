import 'package:flutter/material.dart';

import '../../../constants.dart';

class BodyComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(children: <Widget>[
      Container(
        height: size.height * 0.2,
        child: Container(
          height: size.height * 0.2 - 27,
          decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
        ),
      )
    ]);
  }
}
