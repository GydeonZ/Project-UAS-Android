import 'package:flutter/material.dart';
import 'package:projectuas/model/first_heading_model.dart';

class SecondContentWidget extends StatelessWidget {
  const SecondContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(right: size.width * 0.04),
        height: size.height * 0.25,
        width: size.width * 1.6, // Adjust width as needed
        decoration: const BoxDecoration(
          color: Color(0xffbcaffe),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/promokejar.png',
              height: double.infinity,
              width: size.width * 0.4,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: size.height * 0.2,
              width: size.width * 1.2, // Set a specific width
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: firstHeadingModel.productImage.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(right: size.width * 0.04),
                      height: size.height * 0.2,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            firstHeadingModel.productImage[index],
                            height: size.height * 0.15,
                            width: size.width * 0.3,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(height: size.height * 0.01),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                firstHeadingModel.productPrice[index],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Helvetica',
                                ),
                              ),
                              const Text(
                                'Rp14...',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffb1bbcd),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Helvetica',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
