import 'package:flutter/material.dart';
import 'package:template/helper.dart';

class CoreUsernameFormField extends StatelessWidget {
  const CoreUsernameFormField({
    required this.callback,
    this.initialValue,
    super.key,
  });

  final void Function(String) callback;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
        labelText: Helper.translate(context, 'username'),
      ),
      onChanged: callback,
      initialValue: initialValue ?? '',
      autocorrect: false,
    );
  }
}
