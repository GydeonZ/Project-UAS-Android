import 'package:flutter/material.dart';
import 'package:projectuas/screen/view/chat_screen/chat_screen_view.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              'Inbox',
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: size.width * 0.05, // Responsive font size
              ),
            ),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
              color: Colors.black, size: size.width * 0.06),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: Image.asset(
                  'assets/bell.png',
                  width: size.width * 0.07, // Responsive icon size
                  height: size.width * 0.07,
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
                  constraints: BoxConstraints(
                    minWidth: size.width * 0.05, // Responsive constraints
                    minHeight: size.width * 0.05,
                  ),
                  child: Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width * 0.03, // Responsive text size
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
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
              'assets/chat.png',
              width: size.width * 0.06, // Responsive icon size
              height: size.width * 0.06,
            ),
            title: GestureDetector(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ChatScreenView(),
                  ),
                );
              },
              child: Text(
                'Chat Penjual',
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: size.width * 0.045, // Responsive text size
                ),
              ),
            ),
            trailing: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(12),
              ),
              constraints: BoxConstraints(
                minWidth: size.width * 0.05, // Responsive constraints
                minHeight: size.width * 0.05,
              ),
              child: Text(
                '5',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.03, // Responsive text size
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
          Divider(height: size.height * 0.01), // Responsive divider height
          ListTile(
            leading: Image.asset(
              'assets/discuss.png',
              width: size.width * 0.06, // Responsive icon size
              height: size.width * 0.06,
            ),
            title: Text(
              'Diskusi Produk',
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: size.width * 0.045, // Responsive text size
              ),
            ),
            onTap: () {
              // Handle Diskusi Produk tap
            },
          ),
          Divider(height: size.height * 0.01), // Responsive divider height
          ListTile(
            leading: Image.asset(
              'assets/star.png',
              width: size.width * 0.06, // Responsive icon size
              height: size.width * 0.06,
            ),
            title: Text(
              'Ulasan',
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: size.width * 0.045, // Responsive text size
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
