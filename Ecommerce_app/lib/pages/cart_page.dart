import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../model/cart_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "My Cart",
            style: GoogleFonts.notoSerif(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Consumer<CartModel>(
          builder: (context, cart, child) {
            return Column(
              children: [
                Expanded(
                    child: ListView.builder(
                  itemCount: cart.cartItems.length,
                  padding: EdgeInsets.all(12),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            cart.cartItems[index][2],
                            height: 36,
                          ),
                          title: Text(cart.cartItems[index][0]),
                          subtitle: Text("\$${cart.cartItems[index][1]}"),
                          trailing: IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              cart.removeFromCart(index);
                            },
                          ),
                        ),
                      ),
                    );
                  },
                )),

                // total price + pay button
                Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Total Price",
                              style: TextStyle(
                                color: Colors.green[100],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "\$${cart.calculateTotal()}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.green.shade100,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Pay Now",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: Colors.white,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ));
  }
}
