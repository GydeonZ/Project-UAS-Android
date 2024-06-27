import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool goPaySelected = true;
  bool goPayCoinsSelected = false;
  String selectedPaymentMethod = "Mandiri Virtual Account";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Row(
          children: [
            Text(
              'Pembayaran',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
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
              Row(
                children: [
                  Image.asset('assets/image/gopay-tabungan.png',
                      width: 40, height: 40),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('GoPay Tabungan by Jago (Rp2)',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Oops, saldo kurang. Top-up Sekarang',
                            overflow: TextOverflow.ellipsis),
                      ],
                    ),
                  ),
                  Switch(
                    value: goPaySelected,
                    onChanged: (bool value) {
                      setState(() {
                        goPaySelected = value;
                      });
                    },
                    activeColor: Colors.green,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Image.asset('assets/image/gopay-coins.png',
                      width: 40, height: 40),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('GoPay Coins',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          '1 Coins',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Switch(
                    value: goPayCoinsSelected,
                    onChanged: (bool value) {
                      setState(() {
                        goPayCoinsSelected = value;
                      });
                    },
                    activeColor: Colors.green,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Divider(),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Metode pembayaran',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Lihat Semua',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
              ListTile(
                title: Row(
                  children: [
                    Image.asset('assets/image/mandiri.png',
                        width: 50, height: 50),
                    const SizedBox(width: 15),
                    const Expanded(
                      child: Text(
                        'Mandiri Virtual Account',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Radio<String>(
                      value: 'Mandiri Virtual Account',
                      groupValue: selectedPaymentMethod,
                      onChanged: (value) {
                        setState(() {
                          selectedPaymentMethod = value!;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    Image.asset('assets/image/bca.png', width: 50, height: 50),
                    const SizedBox(width: 15),
                    const Expanded(
                      child: Text(
                        'BCA Virtual Account',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Radio<String>(
                      value: 'BCA Virtual Account',
                      groupValue: selectedPaymentMethod,
                      onChanged: (value) {
                        setState(() {
                          selectedPaymentMethod = value!;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                  ],
                ),
              ),
              const Divider(),
              const SizedBox(height: 16),
              const Text(
                'Promo Pembayaran',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 10),
              Card(
                color: Colors.white,
                elevation: 3.0, // Menambahkan shadow
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/image/gopay-tabungan.png',
                              width: 24, height: 24),
                          const SizedBox(width: 8),
                          const Text(
                            'GoPay Tabungan by Jago',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        '+ Cashback sampai 23.665 GoPay Coins (khusus bayar penuh pakai GoPay Tabungan)',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Ringkasan pembayaran',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Belanja',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Rp956.900',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Biaya Layanan',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Rp1.000',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pakai GoPay Tabungan',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '-Rp2',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 197, 238, 201),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Row(
                  children: [
                    Expanded(
                      child: Text(
                        '🎉  Yay, kamu dapat diskon Rp9.300 dari transaksi ini',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const Divider(),
              const SizedBox(height: 10),
              Row(children: [
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
                  'Rp948.598',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                ElevatedButton.icon(
                  onPressed: () {
                    //
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 50),
                  ),
                  icon: ColorFiltered(
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                    child: Image.asset('assets/image/guard.png',
                        width: 15, height: 15),
                  ),
                  label: const Text(
                    'Bayar',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
