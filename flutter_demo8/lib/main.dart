import 'package:authing_sdk/authing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  Authing.init("657945fd00b5ee9cfb1f52ca", "657946b97de38ec3e1ccf99b");
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
          return OutlinedButton(
              onPressed: () {
                print(constraint);
              },
              child: Text(
                "click me",
                style: GoogleFonts.aboreto(),
              ));
        },
      ),
    ));
  }
}
