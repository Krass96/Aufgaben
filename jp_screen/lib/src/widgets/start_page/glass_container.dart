import 'dart:ui';
import 'package:flutter/material.dart';

class GlassContainer extends StatelessWidget {
  final Widget child;
  final double? height;
  final double? width;

  const GlassContainer({
    super.key,
    required this.child,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          height: height,
          width: width,
          padding: const EdgeInsets.all(26),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(25, 255, 255, 255),
              width: 2,
            ),
            color: const Color.fromARGB(0, 58, 2, 54),
            borderRadius: BorderRadius.circular(16),
          ),
          child: child,
        ),
      ),
    );
  }
}
