import 'package:flutter/material.dart';
import 'package:flutter_demo6/pages/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // 确保绑定已初始化
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        fontFamily: GoogleFonts.openSans().fontFamily,
      )));
}
