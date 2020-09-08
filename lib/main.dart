import 'package:flutter/material.dart';
import 'package:myapp/Screens/Login/login_screen.dart';
import 'package:myapp/constants.dart';
import 'package:flutter/services.dart';
import 'package:myapp/components/parseColor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      // systemNavigationBarColor: Colors.blue, // navigation bar color
      statusBarColor: parseColor('#edf9ff'), // status bar color
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Nunito',
        // appBarTheme: Theme.of(context).appBarTheme.copyWith(brightness: Brightness.light),
      ),
      home: LoginScreen(),
    );
  }
}
