import 'package:flutter/material.dart';

class S5Provider extends ChangeNotifier {
  String _s5 = 'S5';
  String get s5 => _s5;

  set s5(String newS5) {
    _s5 = newS5;
    notifyListeners();
  }
}