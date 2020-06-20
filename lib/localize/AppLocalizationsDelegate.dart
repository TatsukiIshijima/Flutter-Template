import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertemplete/localize/AppLocalizations.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['ja'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}
