import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ReceiptPage extends StatelessWidget {
  const ReceiptPage({super.key, required this.image, required this.heroTag});

  final Object heroTag;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
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
