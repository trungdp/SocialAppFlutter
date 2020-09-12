import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/services.dart';
<<<<<<< HEAD
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:myapp/Screens/Register/StepOne/step_one_screen.dart';
import 'package:myapp/localizations/app_localizations.dart';

=======
import 'package:myapp/Screens/ConfirmCode/confirm_code_screen.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'localizations/AppLocalizations.dart';
>>>>>>> ca6f59edddcfecfdfdcf3c91bcb66ef3c35cba1a

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      // systemNavigationBarColor: Colors.blue, // navigation bar color
      statusBarColor: Color(0xFFEFFAFE), // status bar color
    ));
    FlutterStatusbarcolor.setStatusBarColor(Color(0xEFFAFE));
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
            // log(supportedLocale.languageCode);
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
<<<<<<< HEAD
      home: RegisterStepOneScreen()
=======
      home: ConfirmCodeScreen(),
>>>>>>> ca6f59edddcfecfdfdcf3c91bcb66ef3c35cba1a
    );
  }
}
