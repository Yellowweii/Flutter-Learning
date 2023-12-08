import 'package:flutter/material.dart';
import 'package:flutter_demo5/pages/HomePage.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('myBox');
  runApp(MaterialApp(
    initialRoute: "/home-page",
    routes: {
      "/home-page": (context) => HomePage(),
    },
  ));
}
