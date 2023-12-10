import 'package:flutter/material.dart';

class DietModel {
  static List<Map> diets = [
    {
      "name": 'Honey Pancake',
      "iconPath": 'assets/honey-pancakes.svg',
      "level": 'Easy',
      "duration": '30mins',
      "calorie": '180kCal',
      "viewIsSelected": true,
      "boxColor": Color(0xff9DCEFF)
    },
    {
      "name": 'Canai Bread',
      "iconPath": 'assets/canai-bread.svg',
      "level": 'Easy',
      "duration": '20mins',
      "calorie": '230kCal',
      "viewIsSelected": false,
      "boxColor": Color(0xffEEA4CE)
    }
  ];
}
