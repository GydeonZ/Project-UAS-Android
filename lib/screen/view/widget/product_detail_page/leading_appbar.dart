import 'package:flutter/material.dart';
import 'package:projectuas/screen/view/shopping%20cart/shopping_cart.dart';

class DetailProductLeadingAppBar extends StatefulWidget {
  const DetailProductLeadingAppBar({super.key});

  @override
  State<DetailProductLeadingAppBar> createState() =>
      _DetailProductLeadingAppBarState();
}

class _DetailProductLeadingAppBarState
    extends State<DetailProductLeadingAppBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          'assets/search.png',
          scale: size.width * 0.25 / 100,
          color: const Color(0xff4f5259),
        ),
        SizedBox(width: size.width * 0.02),
        Image.asset(
          'assets/share.png',
          scale: size.width * 0.25 / 100,
          color: const Color(0xff4f5259),
        ),
        SizedBox(width: size.width * 0.01),
        Stack(
          children: [
            SizedBox(
              width: size.width * 0.1,
              height: size.width * 0.1,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ShoppingCartScreen(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/cart.png',
                  scale: size.width * 0.2 / 100,
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(6),
                ),
                constraints: BoxConstraints(
                  minWidth: size.width * 0.05,
                  minHeight: size.width * 0.04,
                ),
                child: const Center(
                  child: Text(
                    '69',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: size.width * 0.01),
        Image.asset(
          'assets/bar.png',
          scale: size.width * 0.25 / 100,
          color: const Color(0xff4f5259),
        ),
        SizedBox(width: size.width * 0.03),
      ],
    );
  }
}
