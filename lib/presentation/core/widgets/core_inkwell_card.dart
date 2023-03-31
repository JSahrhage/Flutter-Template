import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:template/presentation/core/presentation_config.dart' as config;
import 'package:template/presentation/core/widgets/core_inkwell_card_image.dart';
import 'package:template/presentation/core/widgets/core_sized_padding_box.dart';

class CoreInkwellCard extends StatelessWidget {
  const CoreInkwellCard({
    required this.callback,
    required this.underlyingObjId,
    required this.cardTitle,
    required this.icon,
    required this.imageURL,
    this.height,
    super.key,
  });

  final void Function(String) callback;
  final String underlyingObjId;
  final String cardTitle;
  final IconData icon;
  final Option<String> imageURL;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      height: height ?? (config.kInkwellCardImageSize * 1.1),
      child: Card(
        color: Theme.of(context).colorScheme.background,
        child: InkWell(
          onTap: () => callback(underlyingObjId),
          child: Row(
            children: [
              const SizedBox(width: 8),
              CoreInkwellCardImage(
                icon: icon,
                imageURL: imageURL,
              ),
              Expanded(
                child: Text(
                  cardTitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: config.kInkwellCardFontSize),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
