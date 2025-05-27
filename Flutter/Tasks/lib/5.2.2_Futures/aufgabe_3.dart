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

  Future<String> tripleString(String input) async {
    await Future.delayed(Duration(seconds: 3));
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
                onPressed: () async {
                  String result = await tripleString(input);
                  setState(() {
                    input = result;
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
