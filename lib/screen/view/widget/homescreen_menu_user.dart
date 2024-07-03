import 'package:flutter/material.dart';
import 'package:projectuas/model/homescreen_model.dart';

class HomeScreenMenu extends StatefulWidget {
  const HomeScreenMenu({super.key});

  @override
  State<HomeScreenMenu> createState() => _HomeScreenMenuState();
}

class _HomeScreenMenuState extends State<HomeScreenMenu> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.057,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: bannerImages.userBalanceLocation.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.fromLTRB(8, 8, 2, 8),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: const Color(0xffecedf1),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        bannerImages.userBalanceLocation[index],
                        height: 15.0, // Sesuaikan dengan ukuran yang diinginkan
                      ),
                      SizedBox(
                        width: size.width * 0.015,
                      ),
                      Text(
                        bannerImages.judulMenuUser[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Helvetica',
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
