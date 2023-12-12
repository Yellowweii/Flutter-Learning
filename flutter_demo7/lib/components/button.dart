import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final Widget onTap;
  final Color btnColor;
  final Color textColor;
  const Button(
      {super.key,
      required this.buttonText,
      required this.onTap,
      required this.btnColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (e) => onTap));
      },
      child: Container(
          padding: EdgeInsets.all(30.0),
          decoration: BoxDecoration(
              color: btnColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: textColor),
          )),
    );
  }
}
