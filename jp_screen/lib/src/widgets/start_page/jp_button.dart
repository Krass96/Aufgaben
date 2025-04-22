import 'package:flutter/material.dart';

class JpButton extends StatelessWidget {
  const JpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFE970C4), Color(0xFFF69EA3)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(179, 255, 172, 227),
            blurRadius: 10,
            offset: Offset(0, 1),
            spreadRadius: 1,
          ),
        ],
      ),
      child: const Text(
        "Order Now",
        style: TextStyle(
          fontFamily: 'Inter',
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          letterSpacing: 1.0,
        ),
      ),
    );
  }
}
