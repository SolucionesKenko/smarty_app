import 'package:flutter/material.dart';

class S9Provider extends ChangeNotifier {
  String _s9 = 'S9';
  String get s9 => _s9;

  set s9(String newS9) {
    _s9 = newS9;
    notifyListeners();
  }
}