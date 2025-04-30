import 'package:flutter/material.dart';
import 'package:jp_screen/src/widgets/home_page/burger_section.dart';
import 'package:jp_screen/src/widgets/home_page/category_selector.dart';
import 'package:jp_screen/src/widgets/home_page/we_recommend_section.dart';

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
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Choose Your Favorite Snack",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
              const CategorySelector(),
              const SizedBox(height: 30),
              const BurgerSection(),
              const SizedBox(height: 50),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "We Recommend",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              WeRecommendSection(),
            ],
          ),
        ),
      ),
    );
  }
}
