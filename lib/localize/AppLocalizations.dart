import 'package:flutter/widgets.dart';

class AppLocalizations {
  final Locale _locale;

  AppLocalizations(this._locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const _titleKey = 'title';

  static final Map<String, Map<String, String>> _localizedValues = {
    'ja': {
      'title': 'Flutter Template',
    },
  };

  String _getText(String key) => _localizedValues[_locale.languageCode][key];

  String get title => _getText(_titleKey);
}
