import 'package:flutter/material.dart';
import 'package:template/helper.dart';

class CoreFailureAlertDialog extends StatelessWidget {
  const CoreFailureAlertDialog({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        Helper.translate(context, 'failure'),
        textAlign: TextAlign.center,
      ),
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.onError,
        fontSize: 20,
      ),
      backgroundColor: Theme.of(context).colorScheme.error,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      content: Text(
        Helper.translate(context, text),
        textAlign: TextAlign.center,
      ),
    );
  }
}
