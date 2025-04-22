import 'package:flutter/material.dart';

class SnackText extends StatelessWidget {
  const SnackText({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 420,
      child: Opacity(
        opacity: 0.7,
        child: Image.asset(
          'assets/images/details/snack_snack.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
