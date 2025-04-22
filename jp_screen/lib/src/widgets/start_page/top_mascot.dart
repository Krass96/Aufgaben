import 'package:flutter/material.dart';

class TopMascot extends StatelessWidget {
  const TopMascot({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 100,
      child: Image.asset('assets/images/grafiken/cupcake_chick.png'),
    );
  }
}
