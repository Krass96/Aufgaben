import 'package:flutter/material.dart';
import 'package:jp_screen/src/pages/product_detail.dart';
import 'package:jp_screen/src/widgets/start_page/glass_container.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key, required this.widget});

  final ProductDetailOverlay widget;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 210,
      left: 25,
      right: 25,
      child: GlassContainer(
        height: 340,
        child: Stack(
          children: [
            Column(
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
            Positioned(
              top: -2,
              right: 0,
              child: Row(
                children: [
                  const Icon(
                    Icons.favorite_border,
                    color: Color(0x79FFFFFF),
                    size: 16,
                  ),
                  const SizedBox(width: 3),
                  Text(
                    widget.likes.toString(),
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0x79FFFFFF),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
