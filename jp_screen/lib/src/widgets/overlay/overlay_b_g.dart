import 'package:flutter/cupertino.dart';

class OverlayBG extends StatelessWidget {
  const OverlayBG({super.key, required this.screenHeight});

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      height: screenHeight * 0.83,
      child: Container(decoration: BoxDecoration(color: Color(0xFF2F2B22))),
    );
  }
}
