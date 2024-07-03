import 'package:flutter/material.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Row(
          children: [
            Text(
              'Inbox',
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: Image.asset(
                  'assets/image/bell.png',
                  width: 30, // Adjust size as needed
                  height: 30,
                ),
                onPressed: () {
                  // Handle notification icon tap
                },
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 17,
                    minHeight: 17,
                  ),
                  child: const Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: const Color.fromARGB(255, 207, 206, 206),
            height: 2.0,
          ),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Image.asset(
              'assets/image/chat.png',
              width: 24, // Adjust size as needed
              height: 24,
            ),
            title: const Text(
              'Chat Penjual',
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            trailing: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(12),
              ),
              constraints: const BoxConstraints(
                minWidth: 20,
                minHeight: 17,
              ),
              child: const Text(
                '5',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            onTap: () {
              // Handle Chat Penjual tap
            },
          ),
          ListTile(
            leading: Image.asset(
              'assets/image/discuss.png',
              width: 24, // Adjust size as needed
              height: 24,
            ),
            title: const Text(
              'Diskusi Produk',
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            onTap: () {
              // Handle Diskusi Produk tap
            },
          ),
          ListTile(
            leading: Image.asset(
              'assets/image/star.png',
              width: 24, // Adjust size as needed
              height: 24,
            ),
            title: const Text(
              'Ulasan',
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            onTap: () {
              // Handle Ulasan tap
            },
          ),
        ],
      ),
    );
  }
}
