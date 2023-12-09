import 'package:ecommerce_app/model/cart_model.dart';
import 'package:flutter/material.dart';
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
            padding: const EdgeInsets.only(left: 24.0),
            child: Icon(
              Icons.location_on,
              color: Colors.grey[700],
            ),
          ),
          title: Text(
            'Sydney, Australia',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
          centerTitle: false,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
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
          SizedBox(height: 36),
          // good morning
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text("Good morning,"),
          ),

          SizedBox(height: 4),
          // Let's order fresh items for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Let's order fresh items for you",
              style: GoogleFonts.notoSerif(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 24),

          // divider
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Divider(),
          ),
          SizedBox(height: 24),

          //fresh items + grid
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Fresh items",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),

          Expanded(
            child: Consumer<CartModel>(
              builder: (context, cart, child) {
                return GridView.builder(
                    itemCount: cart.shopItems.length,
                    padding: EdgeInsets.all(10),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 0.8),
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
