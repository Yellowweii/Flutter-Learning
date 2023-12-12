import 'package:flutter/material.dart';
import 'package:flutter_demo6/model/popular_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Popular extends StatefulWidget {
  const Popular({super.key});

  @override
  State<Popular> createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  List<Map> popularDiets = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    popularDiets = PopularModel.popularDiets;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            "Popular",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        ListView.separated(
            padding: EdgeInsets.only(left: 20, right: 20),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff1d1617).withOpacity(0.07),
                          offset: Offset(0, 10),
                          blurRadius: 40,
                          spreadRadius: 0)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      popularDiets[index]["iconPath"],
                      width: 65,
                      height: 65,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          popularDiets[index]["name"],
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 16),
                        ),
                        Text(
                          popularDiets[index]["level"] +
                              "|" +
                              popularDiets[index]["duration"] +
                              "|" +
                              popularDiets[index]["calorie"],
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xff7b6f72),
                              fontSize: 13),
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_circle_right_outlined))
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
                  height: 25,
                ),
            itemCount: popularDiets.length)
      ],
    );
  }
}
