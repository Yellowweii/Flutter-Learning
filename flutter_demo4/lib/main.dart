import 'package:flutter/material.dart';
import 'package:flutter_demo4/FirstPage.dart';
import 'package:flutter_demo4/Profile.dart';
import 'package:flutter_demo4/Settings.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/first-page",
    routes: {
      "/first-page": (context) => FirstPage(),
      "/profile": (context) => Profile(),
      "/settings": (context) => Settings(),
    },
  ));
}
