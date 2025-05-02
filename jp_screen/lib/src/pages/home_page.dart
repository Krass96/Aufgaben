import 'package:flutter/material.dart';
import 'package:jp_screen/src/widgets/home_page/burger_section.dart';
import 'package:jp_screen/src/widgets/home_page/category_selector.dart';
import 'package:jp_screen/src/widgets/home_page/choose_text.dart';
import 'package:jp_screen/src/widgets/home_page/we_recommend_section.dart';
import 'package:jp_screen/src/widgets/home_page/we_recommend_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/backgrounds/bg_mainscreen.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ChooseText(),
              const CategorySelector(),
              const SizedBox(height: 30),
              const BurgerSection(),
              const SizedBox(height: 50),
              WeRecommendText(),
              const SizedBox(height: 15),
              WeRecommendSection(),
            ],
          ),
        ),
      ),
    );
  }
}
