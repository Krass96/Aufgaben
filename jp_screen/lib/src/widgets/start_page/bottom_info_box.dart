import 'package:flutter/material.dart';
import 'package:jp_screen/src/widgets/start_page/glass_container.dart';
import 'package:jp_screen/src/widgets/start_page/jp_button.dart';

class BottomInfoBox extends StatelessWidget {
  const BottomInfoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      right: 1,
      left: 1,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 92),
          child: GlassContainer(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Feeling Snackish Today?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  "Explore Angi's most popular snack selection\nand get instantly happy.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.white70),
                ),
                const SizedBox(height: 24),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/home'),
                  child: const JpButton(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
