import 'package:flutter/material.dart';
import 'package:flutter_demo5/pages/HomePage.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/home-page",
    routes: {
      "/home-page": (context) => HomePage(),
    },
  ));
}
