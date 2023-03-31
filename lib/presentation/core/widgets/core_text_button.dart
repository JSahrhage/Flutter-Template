import 'package:flutter/material.dart';
import 'package:template/helper.dart';
import 'package:template/presentation/core/presentation_config.dart' as config;

class CoreTextButton extends StatelessWidget {
  const CoreTextButton({
    super.key,
    required this.callback,
    required this.text,
    this.fontSize,
  });

  final VoidCallback callback;
  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: callback,
      child: Text(
        Helper.translate(context, text),
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontSize: fontSize ?? config.kTextButtonFontSize,
        ),
      ),
    );
  }
}
