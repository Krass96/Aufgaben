import 'package:flutter/material.dart';

class JpButton extends StatelessWidget {
  final String text;
  final double? fontSize;
  final EdgeInsetsGeometry? padding;
  final double? width;

  const JpButton({
    super.key,
    required this.text,
    this.fontSize = 18,
    this.padding,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 60, vertical: 12),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color.fromARGB(255, 232, 93, 190), Color(0xFFF69EA3)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(82, 255, 172, 227),
            blurRadius: 10,
            offset: Offset(0, 1),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 255, 255, 255),
          letterSpacing: 0.1,
        ),
      ),
    );
  }
}
