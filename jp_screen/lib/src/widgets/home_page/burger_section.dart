import 'package:flutter/material.dart';
import 'package:jp_screen/src/widgets/home_page/home_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BurgerSection extends StatelessWidget {
  const BurgerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/details/cut_card2.png',
            fit: BoxFit.fitHeight,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              Positioned(
                top: 21,
                right: 25,
                child: Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 243, 130, 168),
                      size: 16,
                    ),
                    Text(
                      "4.8",
                      style: TextStyle(
                        color: Color.fromARGB(225, 255, 255, 255),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: -10,
                top: 50,
                child: Hero(
                  tag: 'burger_image',
                  child: Image.asset(
                    'assets/images/grafiken/burger.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 140, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Angi's Yummy Burger",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Delish vegan burger\nthat tastes like heaven",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/currency.svg',
                          height: 15,
                          width: 15,
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          "13.99",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    const HomeButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
