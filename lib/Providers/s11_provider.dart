import 'package:flutter/material.dart';

class S11Provider extends ChangeNotifier {
  String _s11 = 'S11';
  String get s11 => _s11;

  set s11(String newS11) {
    _s11 = newS11;
    notifyListeners();
  }
}