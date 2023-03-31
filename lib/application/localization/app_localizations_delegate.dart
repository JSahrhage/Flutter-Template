import 'package:flutter/material.dart' show Locale, LocalizationsDelegate;
import 'package:template/application/localization/app_localizations.dart';
import 'package:template/application/localization/supported_locales.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    if (SupportedLocale.values.map(
      (languageCode) {
        return languageCode.asString;
      },
    ).contains(locale.languageCode)) {
      return true;
    }

    return false;
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    final AppLocalizations appLocalizations = AppLocalizations(locale);
    await appLocalizations.load();
    return appLocalizations;
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}
