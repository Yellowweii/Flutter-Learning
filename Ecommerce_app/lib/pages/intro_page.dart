import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      // logo
      Padding(
        padding: EdgeInsets.fromLTRB(80.w, 120.h, 80.w, 40.h),
        child: Image.asset(
          "assets/avocado.png",
          width: 200.w,
          height: 200.w,
        ),
      ),
      //we deliver groceries at your doorstep
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: Text(
          "We deliver groceries at your doorstep",
          style: GoogleFonts.notoSerif(
            fontSize: 36.sp,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),

      SizedBox(
        height: 24.h,
      ),

      Text(
        "Fresh items every day",
        style: TextStyle(
          color: Colors.grey[600],
        ),
      ),

      SizedBox(
        height: 48.h,
      ),
      // get started button
      GestureDetector(
        onTap: () {
          Navigator.pushReplacementNamed(context, '/home');
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(12.r),
          ),
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Text(
            "Get Started",
            style: TextStyle(color: Colors.white),
          ),
        ),
      )
    ]));
  }
}
