import 'package:flutter/material.dart';
import 'package:flutter_demo7/components/button.dart';
import 'package:flutter_demo7/pages/signin_screen.dart';
import 'package:flutter_demo7/pages/signup_screen.dart';
import 'package:flutter_demo7/theme/theme.dart';
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
          Flexible(
              flex: 2,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(
                        child: Button(
                      buttonText: "Sign in",
                      onTap: SignIn(),
                      btnColor: Colors.transparent,
                      textColor: Colors.white,
                    )),
                    Expanded(
                        child: Button(
                      buttonText: "Sign up",
                      onTap: SignUp(),
                      btnColor: Colors.white,
                      textColor: lightColorScheme.primary,
                    ))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
