import 'package:flutter/material.dart';
import 'package:jp_screen/src/pages/home_page.dart';
import 'package:jp_screen/src/pages/start_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const StartPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
