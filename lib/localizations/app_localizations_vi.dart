import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'app_localizations.dart';

class AppLocalizationsVI implements AppLocalizations {
  const AppLocalizationsVI();

  //Forgot pass
  @override
  String get forgotPassText => "Quên mật khẩu?";

  @override
  String get sendRequest => "Gửi yêu cầu";

  @override
  String get requiredEmail =>
      "Vui lòng cung cấp email cho chúng tôi để giúp bạn cài đặt lại mật khẩu";

  ///Change pass

  @override
  String get changePassText => "Đổi mật khẩu";

  @override
  String get requiredText => "Vui lòng điền đầy đủ các thông tin bên dưới";

  @override
  String get newPassword => "MẬT KHẨU *";

  @override
  String get confirmPassword => "NHẬP LẠI MẬT KHẨU";

  /// Sign in
  @override
  String get userSignIn => 'Inloggen';

  @override
  String get userSignInNoAccount => 'Heeft u geen account?';

  @override
  String get userSignInFormEmail => 'Email';

  @override
  String get userSignInFormPassword => 'Password';

  @override
  String get userSignInFormSignIn => 'Inloggen';

  /// Sign up
  @override
  String get userSignUp => 'Đăng ký';

  // @override
  // String get assword => 'MẬT KHẨU';

  @override
  String get userSignUpHaveAccount => 'Heeft u reeds een account?';

  @override
  String get userSignUpFormName => 'Jouw Naam';

  @override
  String get userSignUpFormEmail => 'Email';

  @override
  String get userSignUpFormPassword => 'Wachtwoord';

  @override
  String get userSignUpFormSignUp => 'Inschrijven';

  static Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(const AppLocalizationsVI());
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      AppLocalizationsDelegate();
}
