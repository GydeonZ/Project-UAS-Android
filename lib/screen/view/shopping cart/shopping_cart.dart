import 'package:flutter/material.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  bool checkboxChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Image.asset(
                'assets/image/left-arrow.png',
                width: 24,
                height: 24,
              ),
            ),
            const SizedBox(width: 15),
            const Text(
              'Keranjang',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Card(
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      color: Colors.white,
                      child: Column(
                        children: [
                          ListTile(
                            title: Row(
                              children: [
                                const SizedBox(width: 8),
                                Image.asset(
                                  'assets/image/pro-badge.png',
                                  width: 24,
                                  height: 24,
                                ),
                                const SizedBox(width: 5),
                                const Text(
                                  'Sc_digital',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            trailing: Image.asset(
                              'assets/image/bebas-ongkir.png', // Ganti dengan path gambar PNG yang sesuai
                              width:
                                  80, // Sesuaikan ukuran gambar sesuai desain
                              height: 24,
                            ),
                          ),
                          Divider(height: 1, color: Colors.grey.shade300),
                          ListView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            children: const [
                              ShoppingCartItem(
                                storeName: 'Sc_digital',
                                items: [
                                  ShoppingItem(
                                    name: 'Xiaomi Redmi Watch 3 Active',
                                    price: 'Rp457.000',
                                    oldPrice: 'Rp499.000',
                                    color: 'GRAY',
                                    imageUrl:
                                        'assets/image/redmi-watch-gray.jpg',
                                    discount: 8,
                                  ),
                                  ShoppingItem(
                                    name: 'Xiaomi Redmi Watch 3 Active',
                                    price: 'Rp457.000',
                                    oldPrice: 'Rp499.000',
                                    color: 'BLACK',
                                    imageUrl:
                                        'assets/image/redmi-watch-black.jpg',
                                    discount: 8,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1.0,
                ),
              ),
            ),
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.local_offer, color: Colors.orange),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: Text(
                          'Yuk, pakai 2 promo biar hemat Rp64.840!',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,
                          color: Colors.grey.shade600, size: 16),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Checkbox(
                      value: checkboxChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          checkboxChecked = value ?? false;
                        });
                      },
                      activeColor:
                          Colors.green, // Mengubah warna checkbox menjadi hijau
                    ),
                    const Text(
                      'Semua',
                      style: TextStyle(fontSize: 16),
                    ),
                    const Spacer(),
                    const Text(
                      'Total:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Rp914.000',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Add your onPressed code here!
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 20),
                      ),
                      child: const Text(
                        'Beli (2)',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ShoppingCartItem extends StatelessWidget {
  final String storeName;
  final List<ShoppingItem> items;

  const ShoppingCartItem(
      {super.key, required this.storeName, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((item) => Card(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          item.imageUrl,
                          width: 60,
                          height: 60,
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
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                Text(
                                  item.price,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                if (item.oldPrice != null)
                                  Text(
                                    item.oldPrice!,
                                    style: const TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: Colors.grey,
                                    ),
                                  ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            if (item.color != null)
                              Text('Color: ${item.color}'),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        children: [
                          if (item.discount != null)
                            Container(
                              padding: const EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: Text(
                                '${item.discount}% OFF',
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.remove),
                                onPressed: () {},
                                iconSize: 20,
                                splashRadius: 20,
                                padding: const EdgeInsets.all(0),
                                constraints: const BoxConstraints(),
                                color: Colors.grey,
                              ),
                              const Text('1'),
                              IconButton(
                                icon: const Icon(Icons.add),
                                onPressed: () {},
                                iconSize: 20,
                                splashRadius: 20,
                                padding: const EdgeInsets.all(0),
                                constraints: const BoxConstraints(),
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ))
          .toList(),
    );
  }
}

class ShoppingItem {
  final String name;
  final String price;
  final String? oldPrice;
  final String? color;
  final String imageUrl;
  final int? discount;

  const ShoppingItem({
    required this.name,
    required this.price,
    this.oldPrice,
    this.color,
    required this.imageUrl,
    this.discount,
  });
}
