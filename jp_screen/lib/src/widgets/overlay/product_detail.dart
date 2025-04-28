import 'package:flutter/material.dart';

class ProductDetailOverlay extends StatefulWidget {
  final String title;
  final String description;
  final double price;
  final String imageAsset;
  final int likes;
  final double rating;

  const ProductDetailOverlay({
    super.key,
    required this.title,
    required this.description,
    required this.price,
    required this.imageAsset,
    required this.likes,
    required this.rating,
  });

  @override
  State<ProductDetailOverlay> createState() => _ProductDetailOverlayState();
}

class _ProductDetailOverlayState extends State<ProductDetailOverlay> {
  int quantity = 1;
  String selectedSize = 'Large';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.85,
          decoration: BoxDecoration(
            color: const Color(0xFF282828),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // Close button
              Positioned(
                top: 20,
                right: 20,
                child: GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
              ),

              // Product image - positioned at the top and slightly overflowing
              Positioned(
                top: -80,
                left: 0,
                right: 0,
                child: Center(
                  child: Image.asset(
                    widget.imageAsset,
                    width: 250,
                    height: 250,
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              // Content container
              Positioned(
                top: 160,
                left: 0,
                right: 0,
                bottom: 0,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Heart icon and likes
                      Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                              size: 18,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              widget.likes.toString(),
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      // Title
                      Text(
                        widget.title,
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(height: 16),

                      // Description
                      Text(
                        widget.description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                          height: 1.5,
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Price
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "₹ ${widget.price.toStringAsFixed(2)}",
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      // Divider
                      Container(height: 1, color: Colors.white10),

                      const SizedBox(height: 20),

                      // Ingredients and Reviews row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Ingredients
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ingredients",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white70,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/LowFat.png',
                                    height: 24,
                                    width: 24,
                                  ),
                                  const SizedBox(width: 8),
                                  Image.asset(
                                    'assets/icons/Kcal.png',
                                    height: 24,
                                    width: 24,
                                  ),
                                  const SizedBox(width: 8),
                                  Image.asset(
                                    'assets/icons/Sugar.png',
                                    height: 24,
                                    width: 24,
                                  ),
                                  const SizedBox(width: 8),
                                  Image.asset(
                                    'assets/icons/Gluten 1.png',
                                    height: 24,
                                    width: 24,
                                  ),
                                ],
                              ),
                            ],
                          ),

                          // Reviews
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Reviews",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white70,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  _buildStar(1, widget.rating),
                                  _buildStar(2, widget.rating),
                                  _buildStar(3, widget.rating),
                                  _buildStar(4, widget.rating),
                                  _buildStar(5, widget.rating),
                                  const SizedBox(width: 8),
                                  Text(
                                    widget.rating.toStringAsFixed(1),
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 30),

                      // Size selector
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildSizeButton('Small'),
                          const SizedBox(width: 8),
                          _buildSizeButton('Medium'),
                          const SizedBox(width: 8),
                          _buildSizeButton('Large'),
                        ],
                      ),

                      const SizedBox(height: 24),

                      // Quantity selector
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildQuantityButton(Icons.remove, () {
                            if (quantity > 1) {
                              setState(() {
                                quantity--;
                              });
                            }
                          }),
                          Container(
                            width: 50,
                            alignment: Alignment.center,
                            child: Text(
                              quantity.toString(),
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          _buildQuantityButton(Icons.add, () {
                            setState(() {
                              quantity++;
                            });
                          }),
                        ],
                      ),

                      const SizedBox(height: 30),

                      // Add to order button
                      Container(
                        width: double.infinity,
                        height: 54,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFFD65DB1), Color(0xFFFF6584)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFFD65DB1),
                              blurRadius: 8,
                              spreadRadius: 2,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Add to order for ₹ ${(widget.price * quantity).toStringAsFixed(2)}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIngredientIcon(IconData icon) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: Icon(icon, color: Colors.white, size: 16),
    );
  }

  Widget _buildStar(int position, double rating) {
    final bool filled = position <= rating;
    final bool halfFilled = position == (rating.ceil()) && rating % 1 != 0;

    return Icon(
      halfFilled ? Icons.star_half : (filled ? Icons.star : Icons.star_border),
      color: filled || halfFilled ? Colors.amber : Colors.white,
      size: 16,
    );
  }

  Widget _buildSizeButton(String size) {
    final isSelected = selectedSize == size;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSize = size;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF3A3A3A) : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? Colors.white : Colors.white,
            width: 1,
          ),
        ),
        child: Text(
          size,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.white,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildQuantityButton(IconData icon, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: Icon(icon, color: Colors.white, size: 18),
      ),
    );
  }
}
