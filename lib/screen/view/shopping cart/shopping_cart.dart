import 'package:flutter/material.dart';
import '../../view_model/shopping cart system/shopping_cart_controller.dart';

class CartItemWidget extends StatelessWidget {
  final CartItem item;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final VoidCallback onRemove;

  const CartItemWidget({
    Key? key,
    required this.item,
    required this.onIncrement,
    required this.onDecrement,
    required this.onRemove,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                item.image,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      IconButton(
                        onPressed: onDecrement,
                        icon: const Icon(Icons.remove),
                      ),
                      Text('${item.quantity}'),
                      IconButton(
                        onPressed: onIncrement,
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Total: Rp ${item.totalPrice.toStringAsFixed(0)}',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: onRemove,
              icon: const Icon(Icons.delete, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  final ShoppingCartController _controller = ShoppingCartController([
    // Inisialisasi dengan beberapa data sampel jika diperlukan
  ]);

  void _incrementQuantity(int index) {
    setState(() {
      _controller.incrementQuantity(index);
    });
  }

  void _decrementQuantity(int index) {
    setState(() {
      _controller.decrementQuantity(index);
    });
  }

  void _removeItem(int index) {
    setState(() {
      _controller.removeItem(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shopping Cart',
          style: TextStyle(
            fontWeight: FontWeight.bold, // Membuat teks menjadi bold
          ),
        ),
        backgroundColor: const Color(0xFFEEEBED),
      ),
      backgroundColor: const Color(0xFFEEEBED),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _controller.cartItems.length,
              itemBuilder: (context, index) {
                final item = _controller.cartItems[index];
                return CartItemWidget(
                  key: Key(item.name),
                  item: item,
                  onIncrement: () => _incrementQuantity(index),
                  onDecrement: () => _decrementQuantity(index),
                  onRemove: () => _removeItem(index),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey, // Warna garis
                  width: 0.5, // Ketebalan garis
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total: ${_controller.totalPrice == 0 ? '-' : 'Rp ${_controller.totalPrice.toStringAsFixed(0)}'}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Tambahkan fungsi checkout di sini
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4C3D53),
                    tapTargetSize: MaterialTapTargetSize
                        .shrinkWrap, // Mengurangi ukuran target saat ditekan
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          8), // Membuat sudut tombol melengkung
                    ),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          8), // Membuat sudut tombol melengkung di dalam area ink
                    ),
                    child: Container(
                      constraints: const BoxConstraints(
                          minWidth: 88,
                          minHeight: 36), // Mengatur ukuran minimum area ink
                      alignment: Alignment.center,
                      child: const Text(
                        'Checkout',
                        style: TextStyle(
                          color: Color(0xFFEEEBED),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
