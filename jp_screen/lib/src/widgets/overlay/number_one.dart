import 'package:flutter/cupertino.dart';

class NumberOne extends StatelessWidget {
  const NumberOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '1',
      style: TextStyle(
        color: const Color.fromARGB(223, 255, 255, 255),
        fontSize: 17,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
