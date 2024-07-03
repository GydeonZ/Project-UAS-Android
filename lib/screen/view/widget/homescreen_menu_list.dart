import 'package:flutter/material.dart';
import 'package:projectuas/model/homescreen_model.dart';
import 'package:projectuas/screen/view_model/view_model_homescreen.dart';
import 'package:provider/provider.dart';

class HomescreenMenuList extends StatefulWidget {
  const HomescreenMenuList({super.key});

  @override
  State<HomescreenMenuList> createState() => _HomescreenMenuListState();
}

class _HomescreenMenuListState extends State<HomescreenMenuList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<HomeScreenProvider>(
      builder: (context, provider, child) {
        return Column(
          children: [
            SizedBox(
              height: size.height * 0.12, // Adjust height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: bannerImages.imagePilihanMenu1.length,
                itemBuilder: (context, index) {
                  provider.text = bannerImages.judulMenu1[index];
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          bannerImages.imagePilihanMenu1[index],
                          height: size.height * 0.07,
                        ),
                      ),
                      ...provider.lines.map(
                        (line) => Text(
                          line,
                          style: const TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: size.height * 0.11, // Adjust height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: bannerImages.imagePilihanMenu2.length,
                itemBuilder: (context, index) {
                  provider.text = bannerImages.judulMenu2[index];
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          bannerImages.imagePilihanMenu2[index],
                          height: size.height * 0.07,
                        ),
                      ),
                      ...provider.lines.map(
                        (line) => Text(
                          line,
                          style: const TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
