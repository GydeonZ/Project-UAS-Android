import 'package:flutter/material.dart';

class OngkirWidget extends StatelessWidget {
  const OngkirWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/bebasongkir.png',
              scale: size.width * 0.009,
            ),
            const Text.rich(
              TextSpan(
                text: 'Rp0',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: ' Rp40.000',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontFamily: 'Helvetica',
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
            )
          ],
        ),
        Row(
          children: [
            Image.asset(
              'assets/time.png',
              scale: size.width * 0.009,
            ),
            SizedBox(width: size.width * 0.02),
            const Text(
              'Estimasi tiba 6 - 10 Jul',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.normal),
            )
          ],
        )
      ],
    );
  }
}
