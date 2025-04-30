import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:jp_screen/src/widgets/start_page/glass_container.dart';
import 'package:jp_screen/src/widgets/start_page/jp_button.dart';

class ProductDetailOverlay extends StatefulWidget {
  final String title;
  final String description =
      'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.';
  final double price;
  final String imageAsset;
  final int likes;

  const ProductDetailOverlay({
    super.key,
    required this.title,
    required this.price,
    required this.imageAsset,
    required this.likes,
  });

  @override
  State<ProductDetailOverlay> createState() => _ProductDetailOverlayState();
}

class _ProductDetailOverlayState extends State<ProductDetailOverlay> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          // Close button
          Container(color: const Color.fromARGB(161, 0, 0, 0)),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: screenHeight * 0.83,
            child: Container(
              decoration: BoxDecoration(color: Color(0xFF2F2B22)),
            ),
          ),
          Positioned(
            top: 160,
            right: 10,
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color.fromARGB(255, 50, 50, 50),
                ),
                padding: const EdgeInsets.all(8),
                child: const Icon(
                  Icons.close,
                  color: Color.fromARGB(150, 255, 255, 255),
                  size: 20,
                ),
              ),
            ),
          ),

          // Product image
          Positioned(
            top: -50,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                widget.imageAsset,
                width: 500,
                height: 500,
                fit: BoxFit.contain,
              ),
            ),
          ),

          Positioned(
            bottom: 200,
            left: 30,
            right: 30,
            child: GlassContainer(
              height: 340,
              width: 170,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: const Color(0xB1FFFFFF),
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '₳',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFFF0E0EF),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(width: 1),
                      Text(
                        widget.price.toString(),
                        style: const TextStyle(
                          fontSize: 18,
                          color: Color(0xFFF0E0EF),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(thickness: 0.4, color: Colors.white),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ingredients',
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xB1FFFFFF),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/Gluten 1.png',
                                width: 18,
                                height: 18,
                              ),
                              const SizedBox(width: 8),
                              Image.asset(
                                'assets/icons/Sugar.png',
                                width: 18,
                                height: 18,
                              ),
                              const SizedBox(width: 8),
                              Image.asset(
                                'assets/icons/LowFat.png',
                                width: 18,
                                height: 18,
                              ),
                              const SizedBox(width: 8),
                              Image.asset(
                                'assets/icons/Kcal.png',
                                width: 18,
                                height: 18,
                              ),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Reviews',
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xB1FFFFFF),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: const Color(0xB1FFFFFF),
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: const Color(0xB1FFFFFF),
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: const Color(0xB1FFFFFF),
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: const Color(0xB1FFFFFF),
                                size: 18,
                              ),
                              Icon(
                                Icons.star_border,
                                color: const Color(0xB1FFFFFF),
                                size: 18,
                              ),
                              SizedBox(width: 10),
                              Text(
                                '4.0',
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(140, 255, 255, 255),
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 700,
            left: 20,
            right: 200,
            child: CupertinoSlidingSegmentedControl<int>(
              thumbColor: const Color.fromARGB(255, 95, 93, 93),

              groupValue: 2,
              children: const {
                0: Text('Small', style: TextStyle(color: Color(0x9DFFFFFF))),
                1: Text('Medium', style: TextStyle(color: Color(0x9DFFFFFF))),
                2: Text('Large', style: TextStyle(color: Color(0xE0FFFFFF))),
              },
              onValueChanged: (value) {},
            ),
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: JpButton(
              text: 'Add to order for ₳${widget.price}',
              fontSize: 18,
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 12),
            ),
          ),
        ],
      ),
    );
  }
}
