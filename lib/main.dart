import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:myapp/Screens/ChangePass/change_pass_screen.dart';
import 'package:myapp/Screens/ConfirmCode/confirm_code_screen.dart';
import 'package:myapp/Screens/ForgotPassword/forgot_pass_screen.dart';
import 'package:myapp/Screens/Login/login_screen.dart';
import 'package:myapp/Screens/ProcessSuccess/process_sucess_screen.dart';
import 'package:myapp/Screens/Register/StepOne/step_one_screen.dart';
import 'package:myapp/Screens/Register/StepTwo/step_two_screen.dart';
import 'localizations/AppLocalizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      // systemNavigationBarColor: Colors.blue, // navigation bar color
      statusBarColor: Color(0xFFEFFAFE), // status bar color
    ));
    FlutterStatusbarcolor.setStatusBarColor(Color(0xFFFFFF));
    return MaterialApp(
      locale: const Locale('vi', ''),
      supportedLocales: [
        const Locale('vi', ''),
        const Locale('en', ''),
      ],
      localizationsDelegates: [
        ApplicationLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode &&
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Nunito',
        // appBarTheme: Theme.of(context).appBarTheme.copyWith(brightness: Brightness.light),
      ),
      home: ConfirmCodeScreen()
    );
  }
}
