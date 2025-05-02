import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartButton extends StatelessWidget {
  final String text;
  final double? fontSize;
  final EdgeInsetsGeometry? padding;
  final double? width;
  final double? height;
  final dynamic fontWeight;

  const StartButton({
    super.key,
    required this.text,
    this.fontSize = 18,
    this.padding,
    this.width,
    this.fontWeight,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 60, vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          style: BorderStyle.solid,
          color: const Color.fromARGB(162, 96, 13, 99),
        ),
        gradient: const LinearGradient(
          colors: [Color.fromARGB(255, 218, 88, 179), Color(0xFFF69EA3)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(83, 255, 172, 227),
            blurRadius: 10,
            offset: Offset(0, 1),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w900,
              fontFamily: GoogleFonts.inter().fontFamily,
              color: Color.fromARGB(255, 255, 255, 255),
              letterSpacing: 0.1,
            ),
          ),
        ],
      ),
    );
  }
}
