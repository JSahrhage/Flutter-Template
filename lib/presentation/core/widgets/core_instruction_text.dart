import 'package:flutter/material.dart';
import 'package:template/helper.dart';

class CoreInstructionText extends StatelessWidget {
  const CoreInstructionText({
    super.key,
    required this.text,
    this.textScaleFactor,
  });

  final String text;
  final double? textScaleFactor;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      textScaleFactor: textScaleFactor ?? 1.5,
      text: TextSpan(
        text: Helper.translate(context, text),
        style: TextStyle(
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
    );
  }
}
