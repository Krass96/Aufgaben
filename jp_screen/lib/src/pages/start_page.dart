import 'package:flutter/material.dart';
import 'package:jp_screen/src/widgets/start_page/background_image.dart';
import 'package:jp_screen/src/widgets/start_page/bottom_info_box.dart';
import 'package:jp_screen/src/widgets/start_page/snack_text.dart';
import 'package:jp_screen/src/widgets/start_page/top_mascot.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          BackgroundImage(),
          TopMascot(),
          SnackText(),
          BottomInfoBox(),
        ],
      ),
    );
  }
}
