import 'package:flutter/material.dart';
import 'package:myapp/Screens/ProcessSuccess/components/body.dart';


class ProcessSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // avoid overflow when focus input == resizeToAvoidBottomPadding
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg-success.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Body(),
          ),
        ),
      ),
    );
  }
}
