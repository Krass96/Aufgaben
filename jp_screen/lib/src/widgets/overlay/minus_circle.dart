import 'package:flutter/material.dart';

class MinusCircle extends StatelessWidget {
  const MinusCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color(0xFF343232),
          border: Border.all(
            width: 0.3,
            color: const Color.fromARGB(133, 255, 255, 255),
          ),
        ),
        padding: const EdgeInsets.all(2),
        child: const Icon(Icons.remove, color: Color(0xA8FFFFFF), size: 24),
      ),
    );
  }
}
