import 'package:flutter/material.dart';
import 'dart:ui';

class CategorySelector extends StatefulWidget {
  const CategorySelector({super.key});

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  @override
  Widget build(BuildContext context) {
    final String selectedCategory = 'Salty';
    final List<String> categories = [
      'All categories',
      'Salty',
      'Sweet',
      'Fresh',
    ];

    return SizedBox(
      height: 42,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          final isSelected = category == selectedCategory;

          Widget buttonContent = Center(
            child:
                category == 'All categories'
                    ? Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/grafiken/lunc_icon2.png',
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(width: 3),
                        Text(
                          category,
                          style: TextStyle(
                            color:
                                isSelected
                                    ? const Color.fromARGB(255, 0, 0, 0)
                                    : Colors.white70,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white70,
                        ),
                      ],
                    )
                    : Text(
                      category,
                      style: TextStyle(
                        color:
                            isSelected
                                ? const Color.fromARGB(255, 0, 0, 0)
                                : Colors.white70,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
          );

          Widget buttonWidget = ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: isSelected ? 8 : 4,
                sigmaY: isSelected ? 8 : 4,
              ),
              child: Container(
                height: 40,
                constraints: const BoxConstraints(minWidth: 100),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color:
                      isSelected
                          ? const Color.fromARGB(255, 244, 200, 238)
                          : const Color.fromARGB(
                            179,
                            255,
                            255,
                            255,
                          ).withAlpha(30),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color:
                        isSelected
                            ? const Color.fromARGB(184, 255, 255, 255)
                            : Colors.white24,
                    width: 2,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: buttonContent,
              ),
            ),
          );

          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            child: buttonWidget,
          );
        },
      ),
    );
  }
}
