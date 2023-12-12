import 'package:flutter/material.dart';
import 'package:flutter_demo7/widgets/custom_scaffold.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
              flex: 8,
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Welcome back!\n",
                          style: TextStyle(
                              fontSize: 45, fontWeight: FontWeight.w600)),
                      TextSpan(
                          text:
                              "\nEnter personal details to your employee account",
                          style: TextStyle(fontSize: 20))
                    ]),
                  ),
                ),
              )),
          Flexible(flex: 2, child: Text("aa"))
        ],
      ),
    );
  }
}
