import 'package:flutter/material.dart';

class CartItem {
  final String id;
  final int quantity;
  final String title;
  final double price;

  CartItem({
    @required this.id,
    @required this.title,
    @required this.price,
    @required this.quantity,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items;

  Map<String, CartItem> get items {
    return {..._items};
  }

  void addItem(String id, String title, double price) {
    if (_items.containsKey(id)) {
      _items.update(
          id,
          (existing) => CartItem(
                id: existing.id,
                title: existing.title,
                price: existing.price,
                quantity: existing.quantity + 1,
              ));
    } else {
      _items.putIfAbsent(
          id,
          () => CartItem(
                id: id,
                title: title,
                price: price,
                quantity: 1,
              ));
    }
  }
}
