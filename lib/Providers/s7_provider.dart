import 'package:flutter/material.dart';

class S7Provider extends ChangeNotifier {
  String _s7 = 'S7';
  String get s7 => _s7;

  set s7(String newS7) {
    _s7 = newS7;
    notifyListeners();
  }
}