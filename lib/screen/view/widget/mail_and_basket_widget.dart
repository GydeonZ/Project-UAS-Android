import 'package:flutter/material.dart';

class MailAndBasketWidget extends StatefulWidget {
  const MailAndBasketWidget({super.key});

  @override
  State<MailAndBasketWidget> createState() => _MailAndBasketWidgetState();
}

class _MailAndBasketWidgetState extends State<MailAndBasketWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Stack(
          children: [
            SizedBox(
              width: size.width * 0.1,
              height: size.width * 0.1,
              child: Icon(
                Icons.mail_outline,
                size: size.width * 0.07,
                color: Colors.grey,
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
                  minWidth: size.width * 0.04,
                  minHeight: size.width * 0.04,
                ),
                child: const Center(
                  child: Text(
                    '5',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
        Stack(
          children: [
            SizedBox(
              width: size.width * 0.1,
              height: size.width * 0.1,
              child: Icon(
                Icons.shopping_cart_outlined,
                size: size.width * 0.07,
                color: Colors.grey,
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
      ],
    );
  }
}
