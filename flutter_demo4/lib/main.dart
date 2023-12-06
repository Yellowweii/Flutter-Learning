import 'package:flutter/material.dart';
import 'package:flutter_demo4/FirstPage.dart';
import 'package:flutter_demo4/Profile.dart';
import 'package:flutter_demo4/Settings.dart';
<<<<<<< HEAD
import 'package:flutter_demo4/pages/CounterPage.dart';
=======
>>>>>>> 59106c88bfe5c67e927aa6d1bd9c73bcb5faf3c5

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
<<<<<<< HEAD
    initialRoute: "/counter-page",
    routes: {
      "/counter-page": (context) => CounterPage(),
=======
    initialRoute: "/first-page",
    routes: {
      "/first-page": (context) => FirstPage(),
      "/profile": (context) => Profile(),
      "/settings": (context) => Settings(),
>>>>>>> 59106c88bfe5c67e927aa6d1bd9c73bcb5faf3c5
    },
  ));
}
