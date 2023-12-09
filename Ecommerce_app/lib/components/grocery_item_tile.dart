import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  final VoidCallback onPressed;

  const GroceryItemTile(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.imagePath,
      required this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      child: Container(
        decoration: BoxDecoration(
          color: color[100],
          borderRadius: BorderRadius.circular(12.r),
        ),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          // image
          Image.asset(
            imagePath,
            height: 64.h,
          ),
          // item name
          Text(itemName),

          // item price + button
          MaterialButton(
              onPressed: onPressed,
              color: color[800],
              child: Text(
                "\$$itemPrice",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ))
        ]),
      ),
    );
  }
}
