import 'package:flutter/material.dart';
import 'package:projectuas/screen/view/widget/product_detail_page/custom_appbar_product.dart';
import 'package:projectuas/screen/view/widget/product_detail_page/product_description_widget.dart';
import 'package:projectuas/screen/view/widget/product_detail_page/product_image.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const CustomAppbarProduct().preferredSize,
        child: const CustomAppbarProduct(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProductImageList(),
            Container(
              padding: EdgeInsets.only(left: size.width * 0.03),
              width: double.infinity,
              height: size.height * 0.035,
              decoration: const BoxDecoration(
                color: Color(0xff009345),
              ),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Mega Electrodeals',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Helvetica'),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            const ProductDescriptionWidget(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: size.height * 0.07,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                width: size.width * 0.1,
                height: size.height * 0.045,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.grey[400]!,
                    width: 1,
                  ),
                ),
                child: Icon(
                  Icons.chat_outlined,
                  color: Colors.black,
                  size: size.width * 0.05,
                )),
            Container(
              width: size.width * 0.4,
              height: size.height * 0.045,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color(0xff00aa5b),
                  width: 1,
                ),
              ),
              child: const Center(
                child: Text(
                  'Beli Sekarang',
                  style: TextStyle(
                    color: Color(0xff00aa5b),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Helvetica',
                  ),
                ),
              ),
            ),
            Container(
              width: size.width * 0.4,
              height: size.height * 0.045,
              decoration: BoxDecoration(
                color: const Color(0xff009345),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(
                child: Text(
                  '+ Keranjang',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Helvetica',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
