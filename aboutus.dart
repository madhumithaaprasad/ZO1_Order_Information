import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0012), // Deep dark background
      body: Stack(
        children: [
          // Back Button Positioned
          Positioned(
            top: 68,
            left: 25,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.05),
                  border: Border.all(color: Colors.white, width: 1),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      blurRadius: 4,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),

          // Content
          Padding(
            padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
            child: ListView(
              children: [
                // Logo
                Center(
                  child: Container(
                    width: 220,
                    height: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/zo1logo.png"),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        )
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  'Transforming Media Through Innovation and Purpose',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'CormorantGaramond',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFDBD7D7),
                    letterSpacing: 0.6,
                  ),
                ),

                const SizedBox(height: 30),

                const Text(
                  '''At Zo1, we believe that access should never limit creativity. Our platform connects creators with the perfect space, removing barriers and making professional production more accessible than ever.

Backed by Zuntra’s media-tech expertise, Zo1 also adheres to a strong ethical foundation through the DEAAI framework—promoting Diversity, Equity, Accessibility, Accountability, and Inclusion in all that we do.

Whether you're shooting a short film, recording a podcast, or staging a brand shoot—Zo1 is your go-to space companion.

Our flagship platforms include:
• Huzzler – a creative freelancing and gig platform
• Luvvy – a next-gen social media space
• Zucka – a regional OTT platform focused on Tamil content
• Entwy – offering AI growth and analytics tools
• Wiviy – a full-suite web and app development solution
• Pathlearn – a smart learning ecosystem for upskilling

Led by Harini Thyagarajan, our CEO and media-tech visionary, Zo1 benefits from a leadership style that blends innovation with inclusivity. Harini ensures Zo1 remains aligned with creator needs, future-ready tech, and socially responsible growth—making it not just a tool, but a movement for creative freedom.''',
                  style: TextStyle(
                    fontFamily: 'CormorantGaramond',
                    fontSize: 16,
                    height: 1.6,
                    letterSpacing: 0.3,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




