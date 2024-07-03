import 'package:flutter/material.dart';
import 'package:projectuas/screen/view/widget/product_detail_page/ongkir_widget.dart';
import 'package:projectuas/screen/view/widget/product_detail_page/ticketclipper_widget.dart';
import 'package:projectuas/screen/view/widget/product_detail_page/ulasan_product_widget.dart';

class ProductDescriptionWidget extends StatelessWidget {
  const ProductDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
        left: size.width * 0.03,
        right: size.width * 0.03,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'Rp444.000',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(width: size.width * 0.02),
              Image.asset(
                'assets/bebasongkir.png',
                scale: size.width * 0.009,
              ),
            ],
          ),
          SizedBox(height: size.height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/gpaylater.png',
                scale: size.width * 0.009,
              ),
              const Text(
                '+ Diskon 50% s.d. Rp50k Kode GOPAYLATER',
                style: TextStyle(
                  color: Color(0xff1d978b),
                  fontSize: 14,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.black,
                size: size.width * 0.04,
              ),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kingston SSD NV2 1TB M.2 NVMe PCIe Gen 4.0 x4 / SSD M.2 1TB',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Helvetica',
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: size.width * 0.02,
              ),
              const Icon(
                Icons.favorite_rounded,
                color: Color(0xfff1134e),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          const ClippedTicketVoucher(),
          SizedBox(height: size.height * 0.03),
          Row(
            children: [
              const Text(
                'Terjual 149',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Helvetica',
                ),
              ),
              SizedBox(width: size.width * 0.02),
              Container(
                padding: EdgeInsets.only(
                  left: size.width * 0.01,
                  right: size.width * 0.01,
                ),
                margin: EdgeInsets.only(right: size.width * 0.02),
                width: size.width * 0.22,
                height: size.height * 0.03,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: const Color(0xffc4c5ca),
                    width: 1,
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.star_rounded,
                      color: Color(0xfffec303),
                    ),
                    Text.rich(
                      TextSpan(
                        text: '5.0',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Helvetica',
                        ),
                        children: [
                          TextSpan(
                            text: ' (91)',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontFamily: 'Helvetica',
                            ),
                          ),
                        ],
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
                width: size.width * 0.12,
                height: size.height * 0.03,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: const Color(0xffc4c5ca),
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.camera_alt_rounded,
                      color: const Color(0xff8e95a7),
                      size: size.width * 0.045,
                    ),
                    const Text(
                      '41',
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
                width: size.width * 0.15,
                height: size.height * 0.03,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: const Color(0xffc4c5ca),
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/discussionfilled.png',
                      scale: 1.5,
                    ),
                    const Text(
                      '13',
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
          SizedBox(height: size.height * 0.02),
          const OngkirWidget(),
          SizedBox(height: size.height * 0.02),
          const UlasanProductWidget(),
        ],
      ),
    );
  }
}
