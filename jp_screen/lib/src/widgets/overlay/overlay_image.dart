import 'package:flutter/cupertino.dart';
import 'package:jp_screen/src/pages/product_detail.dart';

class OverlayImage extends StatelessWidget {
  const OverlayImage({super.key, required this.widget});

  final ProductDetailOverlay widget;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -50,
      left: 0,
      right: 0,
      child: Center(
        child: Image.asset(
          widget.imageAsset,
          width: 500,
          height: 500,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
