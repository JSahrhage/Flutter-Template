import 'package:flutter/material.dart';
import 'package:template/helper.dart';
import 'package:template/presentation/core/presentation_config.dart' as config;

class CoreCheckboxRow extends StatelessWidget {
  const CoreCheckboxRow({
    required this.callback,
    required this.text,
    required this.value,
    super.key,
  });

  final void Function(bool?) callback;
  final String text;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: Text(
              Helper.translate(context, text),
              style: const TextStyle(fontSize: config.kCheckboxRowFontSize),
            ),
          ),
        ),
        Checkbox(
          value: value,
          onChanged: callback,
          activeColor: Theme.of(context).colorScheme.primary,
        ),
        const SizedBox(
          width: 16,
        )
      ],
    );
  }
}
