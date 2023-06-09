import 'package:flutter/material.dart';

class S4Provider extends ChangeNotifier {
  String _s4 = 'S4';
  String get s4 => _s4;

  set s4(String newS4) {
    _s4 = newS4;
    notifyListeners();
  }
}