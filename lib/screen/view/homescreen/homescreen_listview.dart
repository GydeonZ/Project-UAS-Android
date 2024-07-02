import 'package:flutter/material.dart';
import 'package:projectuas/screen/view/widget/homescreen/first_content_widget.dart';
import 'package:projectuas/screen/view/widget/homescreen/second_content_widget.dart';
import 'package:projectuas/screen/view_model/view_model_countdown.dart';
import 'package:provider/provider.dart';

class HomeListViewBuilder extends StatefulWidget {
  const HomeListViewBuilder({super.key});

  @override
  State<HomeListViewBuilder> createState() => _HomeListViewBuilderState();
}

class _HomeListViewBuilderState extends State<HomeListViewBuilder> {
  @override
  void initState() {
    super.initState();
    Provider.of<CountdownViewModel>(context, listen: false).startTimer();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: size.width * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Lanjut cek ini, yuk',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Helvetica',
            ),
          ),
          SizedBox(height: size.height * 0.02),
          const FirstContentWidget(),
          SizedBox(height: size.height * 0.02),
          const Text(
            'Kejar Diskon Spesial',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Helvetica',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Berakhir Dalam'),
              Container(
                margin: EdgeInsets.only(right: size.width * 0.3),
                height: size.height * 0.025,
                width: size.width * 0.24,
                decoration: BoxDecoration(
                  color: const Color(0xffe72b58),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: size.width * 0.015),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.timer_outlined,
                        color: Colors.white,
                        size: 15,
                      ),
                      SizedBox(width: size.width * 0.01),
                      Consumer<CountdownViewModel>(
                        builder: (context, provider, child) {
                          final duration = provider.duration;
                          final hours =
                              duration.inHours.toString().padLeft(2, '0');
                          final minutes = duration.inMinutes
                              .remainder(60)
                              .toString()
                              .padLeft(2, '0');
                          final seconds = duration.inSeconds
                              .remainder(60)
                              .toString()
                              .padLeft(2, '0');
                          return Text(
                            '$hours:$minutes:$seconds',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              fontFamily: 'Helvetica',
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: size.width * 0.04),
                width: size.width * 0.09,
                height: size.width * 0.09,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(
                    color: const Color(0xffdcdde2),
                  ),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          const SecondContentWidget(),
        ],
      ),
    );
  }
}
