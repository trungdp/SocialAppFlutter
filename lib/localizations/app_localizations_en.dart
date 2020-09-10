import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'app_localizations.dart';

class AppLocalizationsEN implements AppLocalizations {
  const AppLocalizationsEN();

  //ConfirmCode
  String get requireSuccess => "Require Success";

  String get activeCode => "ACTIVE CODE";

  String get activeText =>
      "Vui lòng nhập mã kích hoạt để chúng tôi\n chuyển sang màn hình đổi mật khẩu";

  String get error => "Error:";

  String get confirmCode => "Active Code";

  String get goBack => "Back";
  //Forgot pass
  @override
  String get forgotPassText => "Forgot Password?";

  @override
  String get sendRequest => "Send";

  @override
  String get requiredEmail => "Please enter your email to reset password";

  ///Change pass

  @override
  String get changePassText => "Change Password";

  @override
  String get requiredText => "Please enter into fields below";

  @override
  String get newPassword => "NEW PASSWORD";

  @override
  String get confirmPassword => "CONFIRM";

  /// Sign in
  @override
  String get userSignIn => 'Sign in';

  @override
  String get userSignInNoAccount => 'Do not have an account?';

  @override
  String get userSignInFormEmail => 'Email';

  @override
  String get userSignInFormPassword => 'Password';

  @override
  String get userSignInFormSignIn => 'Sign In';

  /// Sign up
  @override
  String get userSignUp => 'Sign up';

  @override
  String get userSignUpHaveAccount => 'Have an account?';

  @override
  String get userSignUpFormName => 'Your Name';

  @override
  String get userSignUpFormEmail => 'Email';

  @override
  String get userSignUpFormPassword => 'Password';

  @override
  String get userSignUpFormSignUp => 'Sign Up';

  static Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(const AppLocalizationsEN());
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      AppLocalizationsDelegate();
}
