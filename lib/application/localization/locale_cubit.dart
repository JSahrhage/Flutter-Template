import 'package:flutter/material.dart' show Locale;
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:template/application/localization/supported_locales.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  // Initial language
  LocaleCubit() : super(SelectedLocale(Locale(SupportedLocale.en.asString)));

  void changeLocale(SupportedLocale locale) {
    emit(SelectedLocale(Locale(locale.asString)));
  }

  SupportedLocale getCurrentLocale() {
    return supportedLocaleFromString(state.locale.languageCode);
  }
}
