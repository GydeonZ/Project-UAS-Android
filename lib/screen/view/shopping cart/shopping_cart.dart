import 'package:flutter/material.dart';
import 'package:projectuas/screen/view/checkout/checkout.dart';
import 'package:projectuas/screen/view/wishlist/wishlist.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  bool checkboxChecked = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              'Keranjang',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const WishlistScreen(),
              ));
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(screenWidth * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Card(
                      margin:
                          EdgeInsets.symmetric(vertical: screenWidth * 0.02),
                      color: Colors.white,
                      child: Column(
                        children: [
                          ListTile(
                            title: Row(
                              children: [
                                SizedBox(width: screenWidth * 0.02),
                                Image.asset(
                                  'assets/image/pro-badge.png',
                                  width: screenWidth * 0.06,
                                  height: screenWidth * 0.06,
                                ),
                                SizedBox(width: screenWidth * 0.02),
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
                              'assets/image/bebas-ongkir.png',
                              width: screenWidth * 0.2,
                              height: screenHeight * 0.03,
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
                          SizedBox(height: screenHeight * 0.01),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
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
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.04, vertical: screenHeight * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.all(screenWidth * 0.02),
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.local_offer, color: Colors.orange),
                      SizedBox(width: screenWidth * 0.02),
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
                SizedBox(height: screenHeight * 0.01),
                Row(
                  children: [
                    Checkbox(
                      value: checkboxChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          checkboxChecked = value ?? false;
                        });
                      },
                      activeColor: Colors.green,
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
                    SizedBox(width: screenWidth * 0.02),
                    const Text(
                      'Rp914.000',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CheckoutScreen(),
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.02,
                            horizontal: screenWidth * 0.05),
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
                SizedBox(height: screenHeight * 0.01),
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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: items
          .map((item) => Card(
                margin: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(screenWidth * 0.02),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          item.imageUrl,
                          width: screenWidth * 0.15,
                          height: screenWidth * 0.15,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.name,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Row(
                              children: [
                                Text(
                                  item.price,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: screenWidth * 0.02),
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
                            SizedBox(height: screenHeight * 0.01),
                            if (item.color != null)
                              Text('Color: ${item.color}'),
                          ],
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      Column(
                        children: [
                          if (item.discount != null)
                            Container(
                              padding: EdgeInsets.all(screenWidth * 0.01),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: Text(
                                '${item.discount}% OFF',
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          SizedBox(height: screenHeight * 0.01),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.remove),
                                onPressed: () {},
                                iconSize: screenWidth * 0.05,
                                splashRadius: screenWidth * 0.05,
                                padding: const EdgeInsets.all(0),
                                constraints: const BoxConstraints(),
                                color: Colors.grey,
                              ),
                              const Text('1'),
                              IconButton(
                                icon: const Icon(Icons.add),
                                onPressed: () {},
                                iconSize: screenWidth * 0.05,
                                splashRadius: screenWidth * 0.05,
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
