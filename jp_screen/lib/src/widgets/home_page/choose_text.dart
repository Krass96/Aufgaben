import 'package:flutter/material.dart';

class ChooseText extends StatelessWidget {
  const ChooseText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        "Choose Your Favorite Snack",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
      ),
    );
  }
}
