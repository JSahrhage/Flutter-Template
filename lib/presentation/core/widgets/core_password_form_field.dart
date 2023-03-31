import 'package:flutter/material.dart';
import 'package:template/helper.dart';

class CorePasswordFormField extends StatelessWidget {
  const CorePasswordFormField({
    required this.formFieldCallback,
    required this.iconButtonCallback,
    required this.isPasswordVisible,
    this.initialValue,
    super.key,
  });

  final void Function(String) formFieldCallback;
  final VoidCallback iconButtonCallback;
  final bool isPasswordVisible;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        TextFormField(
          style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
          decoration: InputDecoration(
            filled: true,
            fillColor: Theme.of(context).colorScheme.secondaryContainer,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
            labelStyle: TextStyle(
              color: Theme.of(context).hintColor,
              fontSize: 14,
            ),
            labelText: Helper.translate(context, 'password'),
          ),
          onChanged: formFieldCallback,
          initialValue: initialValue ?? '',
          autocorrect: false,
          obscureText: !isPasswordVisible,
        ),
        IconButton(
          icon: isPasswordVisible
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off),
          color: isPasswordVisible
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.onSecondary,
          onPressed: iconButtonCallback,
        ),
      ],
    );
  }
}
