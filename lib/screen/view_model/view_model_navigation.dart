import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier {
  var pageIndex = 0;
  List<Widget> navigationbar = [
    // const HomeScreen(),
    // const ChatbotScreen(),
    // const Riwayat(),
    // const SettingScreen(),
  ];

  void updateIndex(int index) {
    pageIndex = index;
    notifyListeners();
  }

  void out() {
    pageIndex = 0;
    notifyListeners();
  }

  void goRiwayat() {
    pageIndex = 2;
    notifyListeners();
  }
}
