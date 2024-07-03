import 'package:flutter/material.dart';
import 'package:projectuas/model/first_heading_model.dart';
import 'package:projectuas/screen/view/product_detail_page/product_detail_screen.dart';

class FirstContentWidget extends StatelessWidget {
  const FirstContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.18,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: firstHeadingModel.productImage.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ProductDetailScreen(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: size.width * 0.04),
                      height: size.height * 0.13,
                      width: size.width * 0.28,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                            firstHeadingModel.productImage[index],
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  Text(
                    firstHeadingModel.productTitle[index],
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                  Text(
                    firstHeadingModel.productName[index],
                    style: const TextStyle(
                      fontSize: 12,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
