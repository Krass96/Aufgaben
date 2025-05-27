import 'package:flutter/material.dart';

void main() {
  runApp(Aufgabe3());
}

class Aufgabe3 extends StatefulWidget {
  const Aufgabe3({super.key});

  @override
  State<Aufgabe3> createState() => _Aufgabe3State();
}

class _Aufgabe3State extends State<Aufgabe3> {
  String input = 'Go';

  String tripleString(String input) {
    return input * 3;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                input,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    input = tripleString(input);
                  });
                },
                child: const Text('Triple String'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
