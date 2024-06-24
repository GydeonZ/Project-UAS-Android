// shopping_cart_provider.dart
import 'package:flutter/foundation.dart';

// Provider untuk state management
class ShoppingCartProvider with ChangeNotifier {
  final ShoppingCartController _controller;

  ShoppingCartProvider(List<Map<String, dynamic>> cartItems)
      : _controller = ShoppingCartController(cartItems);

  List<CartItem> get cartItems => _controller.cartItems;

  double get totalPrice => _controller.totalPrice;

  void incrementQuantity(int index) {
    _controller.incrementQuantity(index);
    notifyListeners();
  }

  void decrementQuantity(int index) {
    _controller.decrementQuantity(index);
    notifyListeners();
  }

  void removeItem(int index) {
    _controller.removeItem(index);
    notifyListeners();
  }
}

// Model dan controller untuk shopping cart
class CartItem {
  final String name;
  final double price;
  final String image;
  int quantity;

  CartItem({
    required this.name,
    required this.price,
    required this.image,
    this.quantity = 1,
  });

  double get totalPrice => price * quantity;

  factory CartItem.fromMap(Map<String, dynamic> map) {
    return CartItem(
      name: map['name'],
      price: map['price'],
      image: map['image'],
      quantity: map['quantity'] ?? 1,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'price': price,
      'image': image,
      'quantity': quantity,
    };
  }
}

class ShoppingCartController {
  final List<CartItem> _cartItems;

  ShoppingCartController(List<Map<String, dynamic>> cartItems)
      : _cartItems = cartItems.map((item) => CartItem.fromMap(item)).toList();

  List<CartItem> get cartItems => _cartItems;

  double get totalPrice {
    return _cartItems.fold(0, (total, item) => total + item.totalPrice);
  }

  void incrementQuantity(int index) {
    _cartItems[index].quantity++;
  }

  void decrementQuantity(int index) {
    if (_cartItems[index].quantity > 1) {
      _cartItems[index].quantity--;
    }
  }

  void removeItem(int index) {
    _cartItems.removeAt(index);
  }
}
