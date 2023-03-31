import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:template/presentation/core/widgets/core_image.dart';

class CoreClickableImage extends StatelessWidget {
  const CoreClickableImage({
    required this.callback,
    required this.icon,
    required this.imageURL,
    this.size,
    this.alignment,
    super.key,
  });

  final VoidCallback callback;
  final IconData icon;
  final Option<String> imageURL;
  final double? size;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      splashColor: Colors.white10,
      child: CoreImage(
        icon: icon,
        imageURL: imageURL,
        size: size,
        alignment: alignment,
      ),
    );
  }
}
