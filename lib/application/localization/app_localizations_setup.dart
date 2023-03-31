import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:template/application/localization/app_localizations.dart';
import 'package:template/application/localization/supported_locales.dart';

// ignore: avoid_classes_with_only_static_members
class AppLocalizationsSetup {
  static Iterable<Locale> supportedLocales = SupportedLocale.values.map(
    (languageCode) {
      return Locale(languageCode.asString);
    },
  );

  static const Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates =
      [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  static Locale? localeResolutionCallback(
    Locale? locale,
    Iterable<Locale> supportedLocales,
  ) {
    for (final supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale!.languageCode &&
          supportedLocale.countryCode == locale.countryCode) {
        return supportedLocale;
      }
    }
    return supportedLocales.first;
  }
}
