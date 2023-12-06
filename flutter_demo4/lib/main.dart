import 'package:flutter/material.dart';
import 'package:flutter_demo4/FirstPage.dart';
import 'package:flutter_demo4/Profile.dart';
import 'package:flutter_demo4/Settings.dart';
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
