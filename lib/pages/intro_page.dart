import "package:flutter/material.dart";

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
        const Padding(
          padding: EdgeInsets.all(24.0),
          child: Text(
            "We deliver groceries at your doorstep",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // Fresh items everyday
        Text(
          "Fresh items everyday",
        ),

        const Spacer(),

        // Get started button
        Container(
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

        const Spacer(),
      ],
    ));
  }
}
