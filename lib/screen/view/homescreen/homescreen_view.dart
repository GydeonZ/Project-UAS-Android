import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projectuas/model/homescreen_model.dart';
import 'package:projectuas/screen/view/homescreen/homescreen_listview.dart';
import 'package:projectuas/screen/view/widget/custom_appbar_widget.dart';
import 'package:projectuas/screen/view/widget/homescreen_menu_list.dart';
import 'package:projectuas/screen/view/widget/homescreen_menu_user.dart';
import 'package:projectuas/screen/view_model/view_model_homescreen.dart';
import 'package:provider/provider.dart';

class HomescreenView extends StatefulWidget {
  const HomescreenView({super.key});

  @override
  State<HomescreenView> createState() => _HomescreenViewState();
}

class _HomescreenViewState extends State<HomescreenView> {
  late HomeScreenProvider homeScreenProvider;
  @override
  void initState() {
    super.initState();
    homeScreenProvider =
        Provider.of<HomeScreenProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const CustomAppBar().preferredSize,
        child: const CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Consumer<HomeScreenProvider>(
              builder: (context, provider, child) {
                return CarouselSlider.builder(
                  itemCount: bannerImages.bannerImages.length,
                  itemBuilder: (context, index, realIndex) {
                    return Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                bannerImages.bannerImages[index],
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            bannerImages.bannerImages.length,
                            (i) {
                              return GestureDetector(
                                onTap: () {
                                  provider.controller.animateToPage(i);
                                },
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(top: size.height * 0.12),
                                  child: Container(
                                    width: size.width * 0.015,
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 4.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: (Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? const Color(0xffC3C3C3)
                                              : const Color(0xffffffff))
                                          .withOpacity(
                                        provider.currentIndex == i ? 0.9 : 0.4,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  },
                  options: CarouselOptions(
                    height: size.height * 0.15,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 4),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 250),
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      provider.setCurrentIndex(index);
                    },
                  ),
                );
              },
            ),
            const HomeScreenMenu(),
            SizedBox(height: size.height * 0.01),
            const HomescreenMenuList(),
            SizedBox(height: size.height * 0.02),
            const HomeListViewBuilder(),
          ],
        ),
      ),
    );
  }
}
