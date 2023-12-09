import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/home_page.dart';
import 'package:ecommerce_app/pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'model/cart_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: IntroPage(),
          routes: {
            '/intro': (context) => IntroPage(),
            '/home': (context) => HomePage(),
            '/cart': (context) => CartPage(),
          })));
}
