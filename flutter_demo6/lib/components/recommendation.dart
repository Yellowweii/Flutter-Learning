import 'package:flutter/material.dart';
import 'package:flutter_demo6/model/diet_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Recommendation extends StatefulWidget {
  const Recommendation({super.key});

  @override
  State<Recommendation> createState() => _RecommendationState();
}

class _RecommendationState extends State<Recommendation> {
  List<Map> diets = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    diets = DietModel.diets;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Recommendation\nFor Diet",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(height: 15),
        Container(
          height: 240,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 210,
                  decoration: BoxDecoration(
                      color: diets[index]["boxColor"].withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(diets[index]["iconPath"]),
                      Text(
                        diets[index]["name"],
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      Text(
                        diets[index]["level"] +
                            "|" +
                            diets[index]["duration"] +
                            "|" +
                            diets[index]["calorie"],
                        style: TextStyle(
                            color: Color(0xff7b6f72),
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                      Container(
                        width: 130,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(colors: [
                              diets[index]["viewIsSelected"]
                                  ? Color(0xff9dceff)
                                  : Colors.transparent,
                              diets[index]["viewIsSelected"]
                                  ? Color(0xff92a3fd)
                                  : Colors.transparent
                            ])),
                        child: Center(
                          child: Text(
                            "View",
                            style: TextStyle(
                                color: diets[index]["viewIsSelected"]
                                    ? Colors.white
                                    : Color(0xffc58bf2),
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                    width: 25,
                  ),
              itemCount: diets.length),
        )
      ],
    );
  }
}
