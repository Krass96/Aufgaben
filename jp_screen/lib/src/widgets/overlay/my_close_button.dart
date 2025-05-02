import 'package:flutter/material.dart';

class MyCloseButton extends StatelessWidget {
  const MyCloseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 160,
      right: 10,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 0.1,
              color: const Color.fromARGB(147, 255, 255, 255),
            ),
            color: const Color.fromARGB(255, 50, 50, 50),
          ),
          padding: const EdgeInsets.all(8),
          child: const Icon(
            Icons.close,
            color: Color.fromARGB(179, 255, 255, 255),
            size: 18,
          ),
        ),
      ),
    );
  }
}
