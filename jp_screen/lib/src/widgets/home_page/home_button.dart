import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color.fromARGB(136, 141, 91, 234), Color(0xFF908CF5)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          width: 1,
          style: BorderStyle.solid,
          color: const Color.fromARGB(92, 255, 255, 255),
        ),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 108, 77, 107),
            blurRadius: 10,
            offset: Offset(0, 1),
            spreadRadius: 1,
          ),
          BoxShadow(color: Color(0xFFFFACE4), blurRadius: 1),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        ),
        onPressed: () {},
        child: const Text(
          'Add to order',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
