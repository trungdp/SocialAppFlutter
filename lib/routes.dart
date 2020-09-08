import 'package:flutter/material.dart';
import 'Screens/ChangePassword/ChangePasswordScreen.dart';

import 'application.dart';

var bootStage = 1;

RouteFactory routes({
  @required Application application,
}) {
  return (RouteSettings settings) {
    var fullScreen = false;
    Widget screen;
    final arguments = settings.arguments as Map<String, dynamic> ?? {};

    switch (settings.name) {
      default:
        screen = ChangePasswordScreen();
    }

    if (bootStage == 2) {
      bootStage = 3;

      return PageRouteBuilder(
        pageBuilder: (BuildContext context, _, __) {
          return screen;
        },
        transitionDuration: const Duration(milliseconds: 500),
      );
    }

    if (fullScreen) {
      return MaterialPageRoute(
        builder: (_) => screen,
        fullscreenDialog: true,
      );
    }

    return PageRouteBuilder(
      pageBuilder: (BuildContext context, _, __) {
        return screen;
      },
      transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  };
}
