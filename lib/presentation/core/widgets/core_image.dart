import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:template/presentation/core/presentation_config.dart' as config;

class CoreImage extends StatelessWidget {
  const CoreImage({
    required this.icon,
    required this.imageURL,
    this.size,
    this.alignment,
    super.key,
  });

  final IconData icon;
  final Option<String> imageURL;
  final double? size;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.center,
      child: imageURL.fold(
        () => Icon(
          icon,
          size: size ?? config.kInkwellCardImageSize,
          color: Theme.of(context).colorScheme.primary,
        ),
        (imageURL) => Container(
          height: size ?? config.kInkwellCardImageSize,
          width: size ?? config.kInkwellCardImageSize,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imageURL,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
