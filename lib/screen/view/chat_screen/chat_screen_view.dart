import 'package:flutter/material.dart';
import 'package:projectuas/screen/view/widget/chat_screen/chatitem_widget.dart';

class ChatScreenView extends StatelessWidget {
  const ChatScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Chat',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: size.width * 0.07,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Image.asset(
            'assets/search.png',
            color: Colors.black,
          ),
          Image.asset(
            'assets/setting.png',
            scale: size.width * 0.008,
            color: Colors.black,
          ),
          Image.asset(
            'assets/option.png',
            scale: size.width * 0.008,
            color: Colors.black,
          ),
        ],
      ),
      body: ListView(
        children: const [
          ChatItem(
            imagePath: 'assets/kyo.png', // Replace with your asset path
            title: 'KYO Official Store',
            subtitle: 'halo ka Farhan, dibantu bintang 5 nya ya ka, makasih',
            date: '21 Jun',
            unreadCount: 2,
          ),
          ChatItem(
            imagePath: 'assets/noirgear.png', // Replace with your asset path
            title: 'Noir Gear',
            subtitle:
                'Hi, Farhan saat ini M1 Lite sudah restock With New Update menjadi M1 NEX sud...',
            date: '14 Jun',
            unreadCount: 1,
          ),
          // Add more ChatItem widgets here...
        ],
      ),
    );
  }
}
