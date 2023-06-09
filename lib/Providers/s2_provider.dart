import 'package:flutter/material.dart';

class S2Provider extends ChangeNotifier {
  String _s2 = 'S2';
  String get s2 => _s2;

  set s2(String newS2) {
    _s2 = newS2;
    notifyListeners();
  }
}