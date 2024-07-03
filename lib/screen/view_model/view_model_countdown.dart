import 'dart:async';
import 'package:flutter/material.dart';

class CountdownViewModel with ChangeNotifier {
  Timer? _timer;
  Duration _duration = const Duration(minutes: 45);

  Duration get duration => _duration;

  countdownProvider() {
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_duration.inSeconds > 0) {
        _duration -= const Duration(seconds: 1);
        notifyListeners();
      } else {
        _timer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
