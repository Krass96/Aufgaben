import 'package:flutter/material.dart';

void main() {
  runApp(Aufgabe1());
}

class Aufgabe1 extends StatelessWidget {
  const Aufgabe1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Expanded(
                flex: 2,
                child: Center(
                  child: Text(
                    'Willkommen zur meiner App',
                    style: TextStyle(
                      color: Color(0xFFFFEE32),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Image.asset('assets/images/Logo_frame.png'),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Text(
                    'Artemi - Dein digitaler Marktplatz für Events und Künstler',
                    style: TextStyle(
                        color: Color(0xFFFFEE32),
                        fontSize: 16,
                        fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
