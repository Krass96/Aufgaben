import 'package:flutter/material.dart';

void main() {
  runApp(Bonus());
}

class Bonus extends StatelessWidget {
  const Bonus({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 5,
            separatorBuilder: (context, index) => SizedBox(height: 10),
            itemBuilder: (context, index) {
              final items = [
                FiveContainer(
                    appName: 'Apple', icon: Icons.apple, color: Colors.black),
                FiveContainer(
                    appName: 'Samsung',
                    icon: Icons.android,
                    color: Colors.blueAccent),
                FiveContainer(
                    appName: 'Nokia',
                    icon: Icons.window_sharp,
                    color: Colors.orangeAccent),
                FiveContainer(
                    appName: 'Redmi',
                    icon: Icons.r_mobiledata_sharp,
                    color: Colors.redAccent),
                FiveContainer(
                    appName: 'Huawei',
                    icon: Icons.h_mobiledata_rounded,
                    color: Colors.pinkAccent)
              ];
              return items[index];
            },
          ),
        ),
      ),
    );
  }
}

class FiveContainer extends StatefulWidget {
  final String appName;
  final IconData icon;
  final Color color;

  const FiveContainer({
    super.key,
    required this.appName,
    required this.icon,
    required this.color,
  });

  @override
  State<FiveContainer> createState() => _FiveContainerState();
}

class _FiveContainerState extends State<FiveContainer> {
  int counter = 0;
  Color currentColor = Colors.transparent;

  @override
  void initState() {
    super.initState();
    currentColor = widget.color;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          counter++;
          if (counter >= 5) {
            currentColor = Colors.green;
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: currentColor,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(
                widget.icon,
                size: 48,
                color: Colors.white,
              ),
              const SizedBox(width: 16),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.appName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Klicks: $counter',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
