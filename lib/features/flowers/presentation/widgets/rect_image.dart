import 'package:flutter/material.dart';

class RectImage extends StatelessWidget {
  final String imagePath;
  final Size size;
  final BoxFit fit;

  /// value from 0.0 to 1.0
  final double imageHeight;

  const RectImage(
      {super.key,
      required this.imagePath,
      required this.size,
      required this.imageHeight,
      this.fit = BoxFit.fitHeight});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(size.height * 0.03),
        child: Image.asset(
          imagePath,
          fit: fit,
          height: size.height * imageHeight,
          width: size.width,
        ));
  }
}
