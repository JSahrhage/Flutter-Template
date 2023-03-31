import 'package:flutter/material.dart';
import 'package:template/helper.dart';
import 'package:template/presentation/core/widgets/core_sized_padding_box.dart';

class CoreElevatedButton extends StatelessWidget {
  const CoreElevatedButton({
    required this.callback,
    required this.text,
    this.isSubmitting,
    super.key,
  });

  final VoidCallback callback;
  final String text;
  final bool? isSubmitting;

  @override
  Widget build(BuildContext context) {
    if (isSubmitting == null) {
      return CoreSizedPaddingBox(
        child: ElevatedButton(
          onPressed: callback,
          child: Text(
            Helper.translate(context, text),
          ),
        ),
      );
    }
    return CoreSizedPaddingBox(
      child: ElevatedButton(
        onPressed: callback,
        child: isSubmitting!
            ? const CircularProgressIndicator.adaptive()
            : Text(
                Helper.translate(context, text),
              ),
      ),
    );
  }
}
