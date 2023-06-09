import 'package:flutter/material.dart';

class S1Provider extends ChangeNotifier {
  String _s1 = 'S1';
  String get s1 => _s1;

  set s1(String newS1) {
    _s1 = newS1;
    notifyListeners();
  }
}