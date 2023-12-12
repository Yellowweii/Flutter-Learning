import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget child;
  const CustomScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/bg1.png",
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          SafeArea(child: child)
        ],
      ),
    );
  }
}
