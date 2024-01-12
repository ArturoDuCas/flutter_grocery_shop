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

  get shopItems => _shopItems;
}
