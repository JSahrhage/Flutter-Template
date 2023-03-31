import 'package:flutter/material.dart';
import 'package:template/helper.dart';
import 'package:template/presentation/core/presentation_config.dart' as config;
import 'package:template/presentation/core/widgets/core_sized_padding_box.dart';

class CoreTitle extends StatelessWidget {
  const CoreTitle({
    super.key,
    required this.text,
    this.fontSize,
  });

  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: Center(
        child: Text(
          Helper.translate(context, text),
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: fontSize ?? config.kTitleFontSize,
          ),
        ),
      ),
    );
  }
}
