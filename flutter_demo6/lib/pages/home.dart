import 'package:flutter/material.dart';
import 'package:flutter_demo6/components/category.dart';
import 'package:flutter_demo6/components/popular.dart';
import 'package:flutter_demo6/components/recommendation.dart';
import 'package:flutter_demo6/components/search.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Breakfast',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            alignment: Alignment.center,
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Search(),
          SizedBox(height: 40),
          Category(),
          SizedBox(
            height: 40,
          ),
          Recommendation(),
          SizedBox(height: 40),
          Popular(),
        ],
      ),
    );
  }
}
