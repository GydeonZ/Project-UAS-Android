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
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Row(
          children: [
            Text(
              'Pembayaran',
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
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset('assets//gopay-tabungan.png',
                      width: screenWidth * 0.1, height: screenWidth * 0.1),
                  SizedBox(width: screenWidth * 0.02),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'GoPay Tabungan by Jago (Rp2)',
                          style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Oops, saldo kurang. Top-up Sekarang',
                          style: TextStyle(fontFamily: 'Helvetica'),
                          overflow: TextOverflow.ellipsis,
                        ),
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
              SizedBox(height: screenWidth * 0.04),
              Row(
                children: [
                  Image.asset('assets//gopay-coins.png',
                      width: screenWidth * 0.1, height: screenWidth * 0.1),
                  SizedBox(width: screenWidth * 0.02),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'GoPay Coins',
                          style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '1 Coins',
                          style: TextStyle(fontFamily: 'Helvetica'),
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
              SizedBox(height: screenWidth * 0.02),
              const Divider(),
              SizedBox(height: screenWidth * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Metode pembayaran',
                    style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Lihat Semua',
                      style: TextStyle(
                        fontFamily: 'Helvetica',
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
                    Image.asset('assets//mandiri.png',
                        width: screenWidth * 0.12, height: screenWidth * 0.12),
                    SizedBox(width: screenWidth * 0.04),
                    const Expanded(
                      child: Text(
                        'Mandiri Virtual Account',
                        style: TextStyle(
                          fontFamily: 'Helvetica',
                          fontWeight: FontWeight.bold,
                        ),
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
                    Image.asset('assets//bca.png',
                        width: screenWidth * 0.12, height: screenWidth * 0.12),
                    SizedBox(width: screenWidth * 0.04),
                    const Expanded(
                      child: Text(
                        'BCA Virtual Account',
                        style: TextStyle(
                          fontFamily: 'Helvetica',
                          fontWeight: FontWeight.bold,
                        ),
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
              SizedBox(height: screenWidth * 0.04),
              const Text(
                'Promo Pembayaran',
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: screenWidth * 0.02),
              Card(
                color: Colors.white,
                elevation: 3.0,
                child: Padding(
                  padding: EdgeInsets.all(screenWidth * 0.02),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets//gopay-tabungan.png',
                              width: screenWidth * 0.06,
                              height: screenWidth * 0.06),
                          SizedBox(width: screenWidth * 0.02),
                          const Text(
                            'GoPay Tabungan by Jago',
                            style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenWidth * 0.02),
                      const Text(
                        '+ Cashback sampai 23.665 GoPay Coins (khusus bayar penuh pakai GoPay Tabungan)',
                        style: TextStyle(fontFamily: 'Helvetica'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenWidth * 0.04),
              const Text(
                'Ringkasan pembayaran',
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: screenWidth * 0.04),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Belanja',
                    style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Rp956.900',
                    style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Biaya Layanan',
                    style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Rp1.000',
                    style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pakai GoPay Tabungan',
                    style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '-Rp2',
                    style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenWidth * 0.05),
              Container(
                padding: EdgeInsets.all(screenWidth * 0.02),
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
                          fontFamily: 'Helvetica',
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenWidth * 0.02),
              const Divider(),
              SizedBox(height: screenWidth * 0.02),
              Row(
                children: [
                  const Text(
                    'Total:',
                    style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  const Text(
                    'Rp948.598',
                    style: TextStyle(
                      fontFamily: 'Helvetica',
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
                      padding: EdgeInsets.symmetric(
                          vertical: screenWidth * 0.025,
                          horizontal: screenWidth * 0.1),
                    ),
                    icon: ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                      child: Image.asset('assets//guard.png',
                          width: screenWidth * 0.04,
                          height: screenWidth * 0.04),
                    ),
                    label: const Text(
                      'Bayar',
                      style: TextStyle(
                        fontFamily: 'Helvetica',
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
