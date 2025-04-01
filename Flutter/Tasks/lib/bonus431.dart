import 'package:flutter/material.dart';

void main() {
  runApp(Bonus());
}

class Bonus extends StatelessWidget {
  const Bonus({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Aufgabe 1'),
          ),
          body: Padding(
            padding: EdgeInsets.fromLTRB(4, 40, 40, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HelloText(),
                SizedBox(height: 10),
                HelloText(),
                SizedBox(height: 20),
                AbcBox(),
                SizedBox(height: 10),
                AbcBox(),
                SizedBox(height: 30),
                FaceIcons(),
              ],
            ),
          ),
        ),
      );
}

class HelloText extends StatelessWidget {
  const HelloText({super.key});

  @override
  Widget build(BuildContext context) => Text(
        'Hello App Akademie!',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
          color: Colors.blue,
        ),
      );
}

class AbcBox extends StatelessWidget {
  const AbcBox({super.key});

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ColorBox(color: Colors.red, label: 'A'),
          SizedBox(width: 10),
          ColorBox(color: Colors.green, label: 'B'),
          SizedBox(width: 10),
          ColorBox(color: Colors.blue, label: 'C'),
        ],
      );
}

class ColorBox extends StatelessWidget {
  final Color color;
  final String label;

  const ColorBox({super.key, required this.color, required this.label});

  @override
  Widget build(BuildContext context) => Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            color: color,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Text(
              label,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      );
}

class FaceIcons extends StatelessWidget {
  const FaceIcons({super.key});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FaceIcon(),
              FaceIcon(),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FaceIcon(),
              FaceIcon(),
            ],
          ),
        ],
      );
}

class FaceIcon extends StatelessWidget {
  const FaceIcon({super.key});

  @override
  Widget build(BuildContext context) => Icon(
        Icons.face,
        size: 50,
        color: Colors.black,
      );
}
