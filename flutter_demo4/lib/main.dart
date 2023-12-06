import 'package:flutter/material.dart';
import 'package:flutter_demo4/pages/CounterPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/counter-page",
    routes: {
      "/counter-page": (context) => CounterPage(),
    },
  ));
}
