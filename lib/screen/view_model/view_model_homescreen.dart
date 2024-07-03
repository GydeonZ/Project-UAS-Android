import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

class HomeScreenProvider extends ChangeNotifier {
  final CarouselController controller = CarouselController();
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  String _text = '';
  int _maxWordsPerLine = 2;

  String get text => _text;
  int get maxWordsPerLine => _maxWordsPerLine;

  void setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  set text(String value) {
    _text = value;
    notifyListeners();
  }

  set maxWordsPerLine(int value) {
    _maxWordsPerLine = value;
    notifyListeners();
  }

  List<String> get lines {
    List<String> words = _text.split(' ');
    List<String> lines = [];
    for (int i = 0; i < words.length; i += _maxWordsPerLine) {
      lines.add(words.skip(i).take(_maxWordsPerLine).join(' '));
    }
    return lines;
  }
}
