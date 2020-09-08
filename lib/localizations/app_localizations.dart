import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'app_localizations_en.dart';
import 'app_localizations_vi.dart';

abstract class AppLocalizations {
  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  //Forgot Pass
  String get forgotPassText;

  String get sendRequest;

  String get requiredEmail;

  //Change pass word
  String get changePassText;

  String get requiredText;

  String get newPassword;

  String get confirmPassword;

  /// Sign in
  String get userSignIn;

  String get userSignInNoAccount;

  String get userSignInFormEmail;

  String get userSignInFormPassword;

  String get userSignInFormSignIn;

  /// Sign up
  String get userSignUp;

  String get userSignUpHaveAccount;

  String get userSignUpFormName;

  String get userSignUpFormEmail;

  String get userSignUpFormPassword;

  String get userSignUpFormSignUp;
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'vi'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode == null || locale.countryCode.isEmpty)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    Intl.defaultLocale = localeName;

    if (locale.languageCode == 'vi') {
      return AppLocalizationsVI.load(locale);
    } else {
      return AppLocalizationsEN.load(locale);
    }
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;

  @override
  String toString() => 'DefaultRWLocalizations.delegate(en_US)';
}
