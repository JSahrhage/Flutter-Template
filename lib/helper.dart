import 'package:flutter/material.dart';
import 'package:template/application/localization/app_localizations.dart';

// ignore: avoid_classes_with_only_static_members
class Helper {
  static String translate(BuildContext context, String text) {
    final translation = AppLocalizations.of(context)!.translate(
      text,
    );
    if (translation == null) {
      return text;
    }
    return translation;
  }
}
