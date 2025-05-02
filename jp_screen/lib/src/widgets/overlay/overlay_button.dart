import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jp_screen/src/pages/product_detail.dart';

class OverlayButton extends StatelessWidget {
  const OverlayButton({super.key, required this.widget});

  final ProductDetailOverlay widget;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 20,
      right: 20,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color.fromARGB(255, 232, 93, 190), Color(0xFFF69EA3)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(82, 255, 172, 227),
              blurRadius: 10,
              offset: Offset(0, 1),
              spreadRadius: 1,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Add to order for ',
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            SvgPicture.asset(
              'assets/icons/currency.svg',
              height: 16,
              width: 16,
            ),
            const SizedBox(width: 2),
            Text(
              '${widget.price}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
