import 'package:flutter/material.dart';
import 'order_info.dart';
import 'order_info_2.dart';
import 'order_info_3.dart';
import 'order_info_4.dart';
import 'order_info_5.dart';
import 'order_info_6.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontFamily: "Georgia"),
          bodyMedium: TextStyle(fontFamily: "Georgia"),
          bodySmall: TextStyle(fontFamily: "Georgia"),
        ),
      ),
      home: const HomePage(),
      routes: {
        '/aboutUs': (context) => const AboutUsPage(),
        '/orderInfo': (context) => const OrderInfoPage(),
        '/orderInfo2': (context) => const OrderInfoPage2(),
        '/orderInfo3': (context) => const OrderInfoPage3(),
        '/orderInfo4': (context) => const OrderInfoPage4(),
        '/orderInfo5': (context) => const OrderInfoPage5(),
        '/orderInfo6': (context) => const OrderInfoPage6(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome to Zo1",
                style: TextStyle(
                  fontFamily: "Georgia",
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/aboutUs');
                },
                child: const Text("About Us"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/orderInfo');
                },
                child: const Text("Order Information 1"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/orderInfo2');
                },
                child: const Text("Order Information 2"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/orderInfo3');
                },
                child: const Text("Order Information 3"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/orderInfo4');
                },
                child: const Text("Order Information 4"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/orderInfo5');
                },
                child: const Text("Order Information 5"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/orderInfo6');
                },
                child: const Text("Order Information 6"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Top bar with back button and title
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Expanded(
                  child: Center(
                    child: Text(
                      "Help & Support",
                      style: TextStyle(
                        fontFamily: "Georgia",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 48), // keeps title centered
              ],
            ),

            const SizedBox(height: 20),

            // Logo
            Center(
              child: Image.asset(
                "assets/images/z01logo.png",
                height: 120,
              ),
            ),

            const SizedBox(height: 20),

            // Scrollable content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: const Text(
                  """At Zo1, we believe that access should never limit creativity. Our platform connects creators with the perfect space, removing barriers and making professional production more accessible than ever. Every feature is crafted to serve a growing community of storytellers, innovators, and entrepreneurs.

Backed by Zuntra's media-tech expertise, Zo1 also adheres to a strong ethical foundation through the DEAAI framework—promoting Diversity, Equity, Accessibility, Accountability, and Inclusion in all that we do. Whether you're shooting a short film, recording a podcast, or staging a brand shoot—Zo1 is your go-to space companion.

At Zo1, we believe in reimagining how media is produced, consumed, and experienced. Our projects span across AI-powered video and audio production, smart learning platforms, and social networking innovations—empowering creators, businesses, and communities alike.

Our flagship platforms include:
- Huzzler – a creative freelancing and gig platform
- Luvvy – a next-gen social media space
- Zucka – a regional OTT platform focused on Tamil content
- Entwy – offering AI growth and analytics tools
- Wiviy – a full-suite web and app development solution
- Pathlearn – a smart learning ecosystem for upskilling

Beyond technology, we're deeply rooted in ethics, inclusivity, and sustainability. Our DEAAI framework guides every step we take. Through our startup incubator and innovation labs, we also help foster the next generation of media-tech entrepreneurs.

POWERED BY VISION

Led by Harini Thyagarajan, our CEO and media-tech visionary, Zo1 benefits from a leadership style that blends innovation with inclusivity. Harini ensures Zo1 remains aligned with creator needs, future-ready tech, and socially responsible growth—making it not just a tool, but a movement for creative freedom.""",
                  style: TextStyle(
                    fontFamily: "Georgia",
                    fontSize: 16,
                    color: Colors.white70,
                    height: 1.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}