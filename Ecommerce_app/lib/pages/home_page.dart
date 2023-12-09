import 'package:ecommerce_app/model/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../components/grocery_item_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(left: 24.w),
            child: Icon(
              Icons.location_on,
              color: Colors.grey[700],
            ),
          ),
          title: Text(
            'Sydney, Australia',
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.grey[700],
            ),
          ),
          centerTitle: false,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 24.w),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 24.h,
          ),
          // good morning
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Text("Good morning,"),
          ),

          SizedBox(height: 4.h),
          // Let's order fresh items for you
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Text(
              "Let's order fresh items for you",
              style: GoogleFonts.notoSerif(
                fontSize: 36.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 24.h),

          // divider
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Divider(),
          ),
          SizedBox(height: 24.h),

          //fresh items + grid
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Text(
              "Fresh items",
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
          ),

          Expanded(
            child: Consumer<CartModel>(
              builder: (context, cart, child) {
                return GridView.builder(
                    itemCount: cart.shopItems.length,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (context, index) {
                      return GroceryItemTile(
                        itemName: cart.shopItems[index][0],
                        itemPrice: cart.shopItems[index][1],
                        imagePath: cart.shopItems[index][2],
                        color: cart.shopItems[index][3],
                        onPressed: () {
                          Provider.of<CartModel>(context, listen: false)
                              .addToCart(index);
                        },
                      );
                    });
              },
            ),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/cart');
          },
          backgroundColor: Colors.black,
          child: Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
        ));
  }
}
