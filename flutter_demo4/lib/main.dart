import 'package:flutter/material.dart';
import 'package:flutter_demo4/pages/TodoApp.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/todo-app",
    routes: {
      "/todo-app": (context) => TodoApp(),
    },
  ));
}
