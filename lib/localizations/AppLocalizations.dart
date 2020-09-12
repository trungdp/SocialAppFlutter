import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ApplicationLocalizations {
  final Locale appLocale;

  ApplicationLocalizations(this.appLocale);

  static ApplicationLocalizations of(BuildContext context) {
    return Localizations.of<ApplicationLocalizations>(
        context, ApplicationLocalizations);
  }

  Map<String, dynamic> _localizeStrings;

  Future<bool> load() async {
    String jsonString = await rootBundle
        .loadString('assets/i18n/${appLocale.languageCode}.json');
    Map<String, dynamic> jsonLanguageMap = json.decode(jsonString);
    _localizeStrings = jsonLanguageMap.map((key, value) {
      return MapEntry(key, value);
    });
    return true;
  }

  static const LocalizationsDelegate<ApplicationLocalizations> delegate =
      _AppLocalizationsDelegate();

  String translate(String key) {
    List<dynamic> keys = key.split('.');
    var value = keys.fold(_localizeStrings, (obj, key) => obj[key]);
    return value != '' ? value : key;
  }
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<ApplicationLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'vi'].contains(locale.languageCode);
  }

  @override
  Future<ApplicationLocalizations> load(Locale locale) async {
    ApplicationLocalizations localizations =
        new ApplicationLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
