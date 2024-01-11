import "package:flutter/material.dart";
import "package:grocery_shop/pages/home_page.dart";
import "package:google_fonts/google_fonts.dart";

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // Logo
        Padding(
          padding: const EdgeInsets.only(
            left: 80,
            right: 80,
            bottom: 80,
            top: 120,
          ),
          child: Image.asset("lib/images/avocado.png"),
        ),

        // We deliver groceries at your doorstep
        Padding(
          padding: EdgeInsets.all(24.0),
          child: Text(
            "We deliver groceries at your doorstep",
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(
          height: 24,
        ),

        // Fresh items everyday
        Text(
          "Fresh items everyday",
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),

        const Spacer(),

        // Get started button
        GestureDetector(
          onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) {
              return const HomePage();
            }),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(24),
            child: Text(
              "Get Started",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),

        const Spacer(),
      ],
    ));
  }
}
