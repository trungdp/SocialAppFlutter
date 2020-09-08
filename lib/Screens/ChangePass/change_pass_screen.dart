import 'package:flutter/material.dart';
import 'package:myapp/Screens/ChangePass/components/body.dart';

class ChangePassScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Body(
              // onConfirmChanged: () {},
              // onPasswordChanged: () {},
              onSubmit: () {},
            ),
          ),
        ),
      ),
    );
  }
}
