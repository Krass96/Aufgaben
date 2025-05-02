import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jp_screen/src/pages/product_detail.dart';

class CardView extends StatefulWidget {
  final String title;
  final String subtitle;
  final String price;
  final String likes;
  final String image;

  const CardView({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.likes,
    required this.image,
  });

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            opaque: false,
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) {
              return Builder(
                builder: (BuildContext innerContext) {
                  return ProductDetailOverlay(
                    title: widget.title,
                    price: double.parse(widget.price),
                    imageAsset: widget.image,
                    likes: int.parse(widget.likes),
                  );
                },
              );
            },
          ),
        );
      },
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color.fromARGB(206, 114, 113, 116), Color(0xFF8C5BEA)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            width: 1.5,
            style: BorderStyle.solid,
            color: const Color.fromARGB(79, 235, 233, 237),
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(106, 0, 0, 0),
              blurRadius: 10,
              offset: Offset(0, 1),
              spreadRadius: 1,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: widget.image,
                  child: Image.asset(
                    widget.image,
                    width: 148,
                    height: 148,
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),

                Text(
                  widget.subtitle,
                  style: const TextStyle(fontSize: 12, color: Colors.white70),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/currency.svg',
                          height: 12,
                          width: 12,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          widget.price,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          widget.likes,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
