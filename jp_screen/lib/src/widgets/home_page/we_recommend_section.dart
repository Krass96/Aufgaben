import 'package:flutter/material.dart';
import 'package:jp_screen/src/widgets/home_page/card_view.dart';

class WeRecommendSection extends StatelessWidget {
  const WeRecommendSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          CardView(
            title: "Mogli's Cup",
            subtitle: "Strawberry ice cream",
            price: "8.99",
            likes: "200",
            image: 'assets/images/grafiken/moglis_cup.png',
          ),
          const SizedBox(width: 20),
          CardView(
            title: "Balu's Cup",
            subtitle: "Pistachio ice cream",
            price: "8.99",
            likes: "180",
            image: 'assets/images/grafiken/balus_cup.png',
          ),
          const SizedBox(width: 20),
          CardView(
            title: 'Smilling David',
            subtitle: 'Coffee ice cream',
            price: '3.99',
            likes: '310',
            image: 'assets/images/grafiken/smilling_david.png',
          ),
          const SizedBox(width: 20),
          CardView(
            title: 'Kai in a Cone',
            subtitle: 'Vanilla ice cream',
            price: '3.99',
            likes: '290',
            image: 'assets/images/grafiken/kai_cone.png',
          ),
        ],
      ),
    );
  }
}
