import 'package:flutter/material.dart';

class S12Provider extends ChangeNotifier {
  String _s12 = 'S12';
  String get s12 => _s12;

  set s12(String newS12) {
    _s12 = newS12;
    notifyListeners();
  }
}