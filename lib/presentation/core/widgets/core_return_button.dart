import 'package:flutter/material.dart';

class CoreReturnButton extends StatelessWidget {
  const CoreReturnButton({
    super.key,
    required this.callback,
  });

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Theme.of(context).colorScheme.onBackground,
        ),
        onPressed: callback,
      ),
    );
  }
}
