import 'package:flutter/material.dart';

class OrderInfoPage2 extends StatelessWidget {
  const OrderInfoPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            // Custom App Bar with glass morph back button
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
              child: Row(
                children: [
                  // Glass morph back button
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.1),
                      border: Border.all(
                        width: 1,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.of(context).pop(),
                      iconSize: 20,
                      padding: EdgeInsets.zero,
                    ),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Order Information',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Georgia',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 42), // For balance
                ],
              ),
            ),

            const SizedBox(height: 10),

            const Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Text(
                  'ID:22309',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Georgia',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Scrollable content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    // Main content container
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.7),
                        border: Border.all(
                          width: 1,
                          color: Colors.white.withOpacity(0.3),
                        ),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          // Item 1
                          _buildOrderItem(
                            "Panasonic LUMIX BGH",
                            "Price(1 item/1hr)",
                            "\$900/1hr",
                            "assets/images/panasonic_lumix.jpg",
                          ),
                          const SizedBox(height: 20),

                          // Item 2
                          _buildOrderItem(
                            "Studio Cool Light 4 Bank",
                            "Price(2 item/1hr)",
                            "\$400/1hr",
                            "assets/images/studio_light.jpg",
                          ),
                          const SizedBox(height: 20),

                          // Item 3
                          _buildOrderItem(
                            "MOZA Mini P MAX Gimbal",
                            "Price(1 item/1hr)",
                            "\$500/1hr",
                            "assets/images/gimbal.jpg",
                          ),
                          const SizedBox(height: 20),

                          // Item 4
                          _buildOrderItem(
                            "100 Sq ft Green Mat Studio",
                            "Price(1 item/1hr)",
                            "\$1200/1hr",
                            "assets/images/studio_image.jpg",
                          ),
                          const SizedBox(height: 20),

                          const Divider(color: Colors.white30),
                          const SizedBox(height: 15),

                          // Price summary
                          _buildPriceRow('Subtotal(4 item)', '\$2300'),
                          const SizedBox(height: 12),
                          _buildPriceRow('GST(18%)', '\$109'),
                          const SizedBox(height: 12),
                          _buildPriceRow('Total', '\$2409', isBold: true),
                        ],
                      ),
                    ),

                    const SizedBox(height: 30),

                    // Re-order button
                    Container(
                      width: 167,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.white.withOpacity(0.1),
                            Colors.white.withOpacity(0.2),
                          ],
                        ),
                        border: Border.all(
                          width: 1,
                          color: Colors.white.withOpacity(0.5),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 4,
                            offset: const Offset(0, 3),
                          )
                        ],
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Handle re-order action
                        },
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Re-order',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Georgia',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderItem(String title, String priceLabel, String price, String imagePath) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image
        Container(
          width: 92,
          height: 87,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
              )
            ],
          ),
        ),
        const SizedBox(width: 16),

        // Text content
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Georgia',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 4),
              Opacity(
                opacity: 0.40,
                child: Text(
                  priceLabel,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Georgia',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),

        // Price
        Opacity(
          opacity: 0.60,
          child: Text(
            price,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: 'Georgia',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPriceRow(String label, String value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Georgia',
              fontWeight: isBold ? FontWeight.bold : FontWeight.w400,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Georgia',
              fontWeight: isBold ? FontWeight.bold : FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}