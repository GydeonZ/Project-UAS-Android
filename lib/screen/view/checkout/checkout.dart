import 'package:flutter/material.dart';
import 'package:projectuas/screen/view/paymentscreen/payment.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  bool donationChecked = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Row(
          children: [
            Text(
              'Pengiriman',
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Alamat pengiriman kamu',
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Image.asset(
                    'assets/image/location.png',
                    width: screenWidth * 0.06,
                    height: screenWidth * 0.06,
                    color: Colors.green,
                  ),
                  const SizedBox(width: 8),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rumah • Nikky Alesandro',
                        style: TextStyle(
                          fontFamily: 'Helvetica',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Jl. Brigjend Katamso, Gg. Tetangga, No.4',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Helvetica',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 10),
              const ProductItem(
                imageUrl: 'assets/image/redmi-watch-gray.jpg',
                title: 'Xiaomi Redmi Watch 3 Active GRAY',
                price: 457000,
                protectionPrice: 13500,
              ),
              const ProductItem(
                imageUrl: 'assets/image/redmi-watch-black.jpg',
                title: 'Xiaomi Redmi Watch 3 Active BLACK',
                price: 457000,
                protectionPrice: 13500,
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/image/bebas-ongkir.png',
                          width: screenWidth * 0.2,
                          height: screenWidth * 0.125,
                        ),
                        const SizedBox(width: 12),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bebas Ongkir',
                              style: TextStyle(
                                fontFamily: 'Helvetica',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '(Rp0)',
                              style: TextStyle(
                                fontFamily: 'Helvetica',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Estimasi tiba 27 - 30 Jun',
                      style: TextStyle(
                        fontFamily: 'Helvetica',
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                    const Divider(),
                    Row(
                      children: [
                        Image.asset(
                          'assets/image/proteksi.png',
                          width: screenWidth * 0.05,
                          height: screenWidth * 0.05,
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: RichText(
                            text: const TextSpan(
                              text: 'Dilindungi Asuransi Pengiriman (Rp5.600)',
                              style: TextStyle(
                                fontFamily: 'Helvetica',
                                color: Color.fromARGB(255, 148, 148, 148),
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 197, 238, 201),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    Icon(Icons.check_circle, color: Colors.green[800]),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        'Yay, kamu hemat Rp8.300 di transaksi ini',
                        style: TextStyle(
                          fontFamily: 'Helvetica',
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const SummaryItem(
                label: 'Bebas Ongkir',
                value: 'Rp8.300',
              ),
              Row(
                children: [
                  const Text(
                    'Yuk, pakai 2 promo biar hemat ',
                    style: TextStyle(fontFamily: 'Helvetica'),
                  ),
                  const Text(
                    'Rp64.840!',
                    style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Icon(Icons.arrow_forward_ios,
                      color: Colors.grey.shade600, size: 16),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 10),
              const Text(
                'Cek ringkasan belanjamu, yuk',
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SummaryItem(
                label: 'Total Harga (2 Barang)',
                value: 'Rp914.000',
              ),
              const SummaryItem(
                label: 'Total Ongkos Kirim',
                value: 'Rp0',
              ),
              const SummaryItem(
                label: 'Total Asuransi Pengiriman',
                value: 'Rp5.600',
              ),
              const SummaryItem(
                label: 'Total Biaya Proteksi (2 Polis)',
                value: 'Rp27.000',
              ),
              const SummaryItem(
                label: 'Biaya Jasa Aplikasi',
                value: 'Rp1.000',
              ),
              const Divider(),
              const SummaryItem(
                label: 'Total Belanja',
                value: 'Rp947.600',
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Image.asset('assets/image/donation.png',
                      width: screenWidth * 0.1, height: screenWidth * 0.1),
                  const SizedBox(width: 15),
                  const Expanded(
                    child: Text(
                      'Donasi Rp 5.000 untuk BUKU BACAAN PERLUAS WAWASAN (Rp5.000)',
                      style: TextStyle(fontFamily: 'Helvetica'),
                    ),
                  ),
                  Checkbox(
                    value: donationChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        donationChecked = value ?? false;
                      });
                    },
                    activeColor: Colors.green,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PaymentScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Pilih Pembayaran',
                    style: TextStyle(
                      fontFamily: 'Helvetica',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Center(
                child: Text.rich(
                  TextSpan(
                    text: 'Dengan melanjutkan, kamu menyetujui ',
                    style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 12,
                      color: Color.fromARGB(255, 102, 102, 102),
                    ),
                    children: [
                      TextSpan(
                        text: 'S&K Asuransi & Proteksi.',
                        style: TextStyle(
                          fontFamily: 'Helvetica',
                          decoration: TextDecoration.underline,
                          fontSize: 12,
                          color: Color.fromARGB(255, 102, 102, 102),
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int price;
  final int protectionPrice;

  const ProductItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.protectionPrice,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Row(
          children: [
            Image.asset(imageUrl,
                width: screenWidth * 0.175, height: screenWidth * 0.175),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Rp$price',
                    style: const TextStyle(
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/image/proteksi.png',
                        width: screenWidth * 0.05,
                        height: screenWidth * 0.05,
                      ),
                      const SizedBox(width: 4),
                      RichText(
                        text: TextSpan(
                          text: 'Proteksi Rusak Total 3 bulan ',
                          style: const TextStyle(
                            fontFamily: 'Helvetica',
                            color: Color.fromARGB(255, 148, 148, 148),
                            fontSize: 13,
                          ),
                          children: [
                            TextSpan(
                              text: '(Rp$protectionPrice)',
                              style: const TextStyle(
                                fontFamily: 'Helvetica',
                                color: Color.fromARGB(255, 148, 148, 148),
                                fontSize: 13,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

class SummaryItem extends StatelessWidget {
  final String label;
  final String value;

  const SummaryItem({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontFamily: 'Helvetica'),
          ),
          Text(
            value,
            style: const TextStyle(fontFamily: 'Helvetica'),
          ),
        ],
      ),
    );
  }
}
