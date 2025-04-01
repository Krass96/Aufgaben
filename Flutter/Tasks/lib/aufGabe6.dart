import 'package:flutter/material.dart';

void main() {
  runApp(ZitatAnzeige());
}

class ZitatAnzeige extends StatelessWidget {
  const ZitatAnzeige({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 230, 241, 241),
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            'Zitat des Tages',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 16, 1, 113),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.format_quote,
                size: 40,
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  '"Der einzige Weg, großartige Arbeit zu leisten, ist zu lieben, was man tut"',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              Text(
                '- Steve Jobs',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
