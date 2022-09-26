import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import '../../../widgets/app_bar.dart';

class ReceiptPage extends StatelessWidget {
  const ReceiptPage({super.key, required this.image, required this.heroTag});

  final Object heroTag;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SpendingAppBar(isTransparent: true),
      body: Hero(
        tag: heroTag,
        child: PhotoView(
          imageProvider: image.image,
        ),
      ),
      extendBodyBehindAppBar: true,
    );
  }
}
