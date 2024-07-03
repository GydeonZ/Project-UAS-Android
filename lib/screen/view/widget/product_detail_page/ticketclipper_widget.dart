import 'package:flutter/material.dart';

class TicketClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    double radius = 10;

    // Starting point
    path.moveTo(0, 0);

    // Top left corner
    path.lineTo(radius, 0);
    path.arcToPoint(Offset(0, radius),
        radius: Radius.circular(radius), clockwise: false);

    // Left side
    path.lineTo(0, size.height - radius);
    path.arcToPoint(Offset(radius, size.height),
        radius: Radius.circular(radius), clockwise: false);

    // Bottom left corner
    path.lineTo(size.width - radius, size.height);
    path.arcToPoint(Offset(size.width, size.height - radius),
        radius: Radius.circular(radius), clockwise: false);

    // Bottom right corner
    path.lineTo(size.width, radius);
    path.arcToPoint(Offset(size.width - radius, 0),
        radius: Radius.circular(radius), clockwise: false);

    // Close the path
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class ClippedTicketVoucher extends StatelessWidget {
  const ClippedTicketVoucher({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipPath(
        clipper: TicketClipper(),
        child: Container(
          color: Colors.white,
          child: Row(
            children: [
              Container(
                color: const Color(0xff3cc68a),
                padding: const EdgeInsets.all(8),
                child: const Icon(
                  Icons.local_offer,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              const SizedBox(width: 8),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Ada diskon Rp26.640',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Helvetica'),
                    ),
                    Text(
                      'Ayo pakai promonya biar makin hemat!',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Helvetica',
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.chevron_right,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
