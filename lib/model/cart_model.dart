import "package:flutter/material.dart";

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = [
    //   [itemName, itemPrice, imagePath, color]
    ["Avocado", "1.99", "lib/images/avocado.png", Colors.green],
    ["Banana", "0.99", "lib/images/banana.png", Colors.yellow],
    ["Water", "0.99", "lib/images/water.png", Colors.blue],
    ["Chicken", "2.99", "lib/images/chicken.png", Colors.orange],
  ];

  // list of cart items
  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  // add items to the cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove items from the art
  void removeItemsFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotalPrice() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }

    return totalPrice.toStringAsFixed(2);
  }
}
