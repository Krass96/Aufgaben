import 'package:flutter/material.dart';
import 'package:jp_screen/src/widgets/overlay/my_close_button.dart';
import 'package:jp_screen/src/widgets/overlay/overlay_b_g.dart';
import 'package:jp_screen/src/widgets/overlay/overlay_button.dart';
import 'package:jp_screen/src/widgets/overlay/overlay_image.dart';
import 'package:jp_screen/src/widgets/overlay/product_info.dart';
import 'package:jp_screen/src/widgets/overlay/size_sliding_segment.dart';

class ProductDetailOverlay extends StatefulWidget {
  final String title;
  final String description =
      'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.';
  final double price;
  final String imageAsset;
  final int likes;

  const ProductDetailOverlay({
    super.key,
    required this.title,
    required this.price,
    required this.imageAsset,
    required this.likes,
  });

  @override
  State<ProductDetailOverlay> createState() => _ProductDetailOverlayState();
}

class _ProductDetailOverlayState extends State<ProductDetailOverlay> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(color: const Color(0xA0000000)),
          OverlayBG(screenHeight: screenHeight),
          OverlayImage(widget: widget),
          ProductInfo(widget: widget),
          MyCloseButton(),
          SizeSlidingSegment(),
          OverlayButton(widget: widget),
        ],
      ),
    );
  }
}
