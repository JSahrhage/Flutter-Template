import 'package:flutter/material.dart';
import 'package:template/presentation/core/presentation_config.dart' as config;

class CoreSizedPaddingBox extends StatelessWidget {
  const CoreSizedPaddingBox({
    required this.child,
    this.padding,
    this.height,
    super.key,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? config.kdefaultEdgeInsets,
      child: SizedBox(
        height: height ?? config.kdefaultFieldHeight,
        child: child,
      ),
    );
  }
}
