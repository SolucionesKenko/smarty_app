import 'package:flutter/material.dart';

class S8Provider extends ChangeNotifier {
  String _s8 = 'S8';
  String get s8 => _s8;

  set s8(String newS8) {
    _s8 = newS8;
    notifyListeners();
  }
}