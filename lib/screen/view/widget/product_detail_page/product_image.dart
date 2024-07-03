import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projectuas/model/detail_product_model.dart';

class ProductImageList extends StatelessWidget {
  const ProductImageList({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CarouselSlider.builder(
      itemCount: detailProductModel.detailProductImage.length,
      itemBuilder: (context, index, realIndex) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                detailProductModel.detailProductImage[index],
              ),
              fit: BoxFit.fill,
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: size.height * 0.45,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: false,
        reverse: false,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}