import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_food_delivery_app/component/my_button.dart';
import 'package:provider_food_delivery_app/component/my_cart_tile.dart';
import 'package:provider_food_delivery_app/model/restaurant.dart';
import 'package:provider_food_delivery_app/pages/payment_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      final userCart = restaurant.cart;

      return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: const Text(
                                "Are you sure you want to clear the cart?"),
                            actions: [
                              // cancel button
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text("Cancel")),
                              // cancel button
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    restaurant.clearCart();
                                  },
                                  child: const Text("Yes"))
                            ],
                          ));
                },
                icon: const Icon(Icons.delete))
          ],
          centerTitle: true,
          title: const Text("Cart"),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Column(
          children: [
            // list of cart
            Expanded(
              child: Column(
                children: [
                  userCart.isEmpty
                      ? const Expanded(
                          child: Center(child: Text("Cart is Empty.....")))
                      : Expanded(
                          child: ListView.builder(
                              itemCount: userCart.length,
                              itemBuilder: (context, index) {
                                // get individual cart item

                                final cartItem = userCart[index];

                                // return cart tile UI
                                return MyCartTile(cartItem: cartItem);
                              }),
                        )
                ],
              ),
            ),
            //
            MyButton(
              text: "Go to checout",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PaymentPage()));
              },
            ),
            const SizedBox(
              height: 25,
            )
          ],
        ),
      );
    });
  }
}
