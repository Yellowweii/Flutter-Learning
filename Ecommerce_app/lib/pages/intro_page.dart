import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      // logo
      Padding(
        padding: const EdgeInsets.fromLTRB(80.0, 140.0, 80.0, 40.0),
        child: Image.asset("assets/avocado.png"),
      ),
      //we deliver groceries at your doorstep
      Padding(
        padding: const EdgeInsets.all(24.0),
        child: Text(
          "We deliver groceries at your doorstep",
          style: GoogleFonts.notoSerif(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),

      SizedBox(
        height: 24.0,
      ),

      //fresh items every day
      Text(
        "Fresh items every day",
        style: TextStyle(
          color: Colors.grey[600],
        ),
      ),

      SizedBox(
        height: 48.0,
      ),
      // get started button
      GestureDetector(
        onTap: () {
          Navigator.pushReplacementNamed(context, '/home');
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(12.0),
          ),
          padding: EdgeInsets.all(24.0),
          child: Text(
            "Get Started",
            style: TextStyle(color: Colors.white),
          ),
        ),
      )
    ]));
  }
}
