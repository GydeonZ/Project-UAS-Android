import 'package:flutter/material.dart';

class UlasanProductWidget extends StatelessWidget {
  const UlasanProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Ulasan Pembeli',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Lihat Semua',
              style: TextStyle(
                color: Color(0xff149f64),
                fontSize: 14,
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.star_rounded,
              color: const Color(0xfffec303),
              size: size.width * 0.1,
            ),
            SizedBox(width: size.width * 0.02),
            const Text.rich(
              TextSpan(
                text: '5.0',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: ' 91 rating • 32 ulasan',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.only(
                left: size.width * 0.01,
                right: size.width * 0.01,
              ),
              margin: EdgeInsets.only(right: size.width * 0.02),
              width: size.width * 0.37,
              height: size.height * 0.03,
              decoration: BoxDecoration(
                color: const Color(0xfff1f2f7),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Kualitas Barang (26)',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: size.width * 0.01,
                right: size.width * 0.01,
              ),
              margin: EdgeInsets.only(right: size.width * 0.02),
              width: size.width * 0.37,
              height: size.height * 0.03,
              decoration: BoxDecoration(
                color: const Color(0xfff1f2f7),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Kemasan Barang (6)',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
