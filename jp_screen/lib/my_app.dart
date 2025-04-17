import 'package:flutter/material.dart';
import 'package:jp_screen/start_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      home: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/backgrounds/bg_mainscreen.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const StartPage(),
        ],
      ),
    );
  }
}
