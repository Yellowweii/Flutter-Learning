import 'package:flutter/material.dart';

class PopularModel {
  static List<Map> popularDiets = [
    {
      "name": 'Blueberry Pancake',
      "iconPath": 'assets/blueberry-pancake.svg',
      "level": 'Medium',
      "duration": '30mins',
      "calorie": '230kCal',
      "boxIsSelected": true,
    },
    {
      "name": 'Salmon Nigiri',
      "iconPath": 'assets/salmon-nigiri.svg',
      "level": 'Easy',
      "duration": '20mins',
      "calorie": '120kCal',
      "boxIsSelected": false,
    }
  ];
}
