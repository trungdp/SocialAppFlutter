import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import './Components/Body.dart';

class ChangePasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: BodyComponent(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      actions: <Widget>[
        IconButton(
          icon: new Icon(Icons.clear),
          padding: new EdgeInsets.all(5.0),
          onPressed: () {},
        ),
      ],
    );
  }
}
