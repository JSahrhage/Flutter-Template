import 'package:flutter/material.dart';
import 'package:template/helper.dart';

class CoreSuccessAlertDialog extends StatelessWidget {
  const CoreSuccessAlertDialog({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        Helper.translate(context, 'success'),
        textAlign: TextAlign.center,
      ),
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.onError,
        fontSize: 20,
      ),
      backgroundColor: Theme.of(context).indicatorColor,
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
