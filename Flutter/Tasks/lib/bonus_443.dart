import 'package:flutter/material.dart';

void main() {
  runApp(Bonus443());
}

class Bonus443 extends StatelessWidget {
  const Bonus443({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: FlexSliderScreen(),
        ),
      ),
    );
  }
}

class FlexSliderScreen extends StatefulWidget {
  const FlexSliderScreen({super.key});

  @override
  State<FlexSliderScreen> createState() => _FlexSliderScreenState();
}

class _FlexSliderScreenState extends State<FlexSliderScreen> {
  int sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Wähle den flex-Wert für den mittleren Bereich:',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Slider(
                value: sliderValue.toDouble(),
                min: 1,
                max: 5,
                divisions: 4,
                label: sliderValue.toString(),
                onChanged: (value) {
                  setState(() {
                    sliderValue = value.toInt();
                  });
                },
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Flex: 1',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: sliderValue,
                child: Container(
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      'Flex: $sliderValue',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.redAccent,
                  child: Center(
                    child: Text(
                      'Flex: 1',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
