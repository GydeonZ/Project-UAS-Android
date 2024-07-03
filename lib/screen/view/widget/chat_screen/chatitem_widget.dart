import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String date;
  final int unreadCount;

  const ChatItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.date,
    required this.unreadCount,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: size.width * 0.02,
        horizontal: size.width * 0.04,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24.0,
            backgroundImage: AssetImage(imagePath),
          ),
          SizedBox(width: size.width * 0.03),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: size.width * 0.01),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[600],
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                date,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 8.0),
              if (unreadCount > 0)
                Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Text(
                    unreadCount.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
