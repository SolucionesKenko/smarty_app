import 'package:flutter/material.dart';

class S10Provider extends ChangeNotifier {
  String _s10 = 'S10';
  String get s10 => _s10;

  set s10(String newS10) {
    _s10 = newS10;
    notifyListeners();
  }
}