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
  bool isLoading = false;

  Future<String> tripleString(String input) async {
    await Future.delayed(Duration(seconds: 3));
    try {
      if (input.isEmpty) {
        throw Exception('Input cannot be empty');
      }
    } catch (e) {
      return 'Error: ${e.toString()}';
    }
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
                  setState(() {
                    isLoading = true;
                  });
                  String result = await tripleString(input);
                  setState(() {
                    input = result;
                    isLoading = false;
                  });
                },
                child: isLoading
                    ? CircularProgressIndicator()
                    : Text('Triple String'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
