import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          backgroundColor: Colors.grey[400],
          title: Text("Choose a Location"),
          titleTextStyle: TextStyle(color: Colors.white),
          centerTitle: true,
          elevation: 0,
        ),
        body: Text("choose location screen"),
      ),
    );
  }
}
