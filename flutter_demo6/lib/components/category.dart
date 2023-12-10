import 'package:flutter/material.dart';
import 'package:flutter_demo6/model/category_model.dart';
import 'package:flutter_svg/svg.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<Map> categories = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = CategoryModel.categories;
    print(categories[0]["boxColor"]);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Category',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 120,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return Container(
                width: 100,
                decoration: BoxDecoration(
                    color: categories[index]["boxColor"].withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: SvgPicture.asset(categories[index]["iconPath"])),
                    Text(
                      categories[index]["name"],
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.black),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              width: 25,
            ),
          ),
        )
      ],
    );
  }
}
