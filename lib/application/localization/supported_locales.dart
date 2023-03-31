enum SupportedLocale {
  en,
  de,
}

extension SupportedLocalesExtension on SupportedLocale {
  String get asString => toString().split('.').last;
}

SupportedLocale supportedLocaleFromString(String value) {
  switch (value) {
    case 'en':
      return SupportedLocale.en;
    case 'de':
      return SupportedLocale.de;
    default:
      throw ArgumentError('Invalid value string: $value');
  }
}
