import "package:flutter/material.dart";
import "package:provider/provider.dart";

import "../model/cart_model.dart";

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Cart")),
      body: Consumer<CartModel>(
        builder: (context, value, child) {
          return Column(
            children: [
              // List of cart items
              Expanded(
                  child: ListView.builder(
                padding: EdgeInsets.all(12.0),
                itemCount: value.cartItems.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          value.cartItems[index][2],
                          height: 36,
                        ),
                        title: Text(value.cartItems[index][0]),
                        subtitle: Text("\$${value.cartItems[index][1]}"),
                        trailing: IconButton(
                          icon: Icon(Icons.cancel),
                          onPressed: () =>
                              Provider.of<CartModel>(context, listen: false)
                                  .removeItemsFromCart(index),
                        ),
                      ),
                    ),
                  );
                },
              )),

              // Total price
            ],
          );
        },
      ),
    );
  }
}