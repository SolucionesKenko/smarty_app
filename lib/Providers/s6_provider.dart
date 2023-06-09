import 'package:flutter/material.dart';

class S6Provider extends ChangeNotifier {
  String _s6 = 'S6';
  String get s6 => _s6;

  set s6(String newS6) {
    _s6 = newS6;
    notifyListeners();
  }
}