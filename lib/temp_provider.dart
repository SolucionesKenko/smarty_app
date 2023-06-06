import 'package:flutter/material.dart';

class TempProvider extends ChangeNotifier {
  String _temp = 'temperatura';
  String get temp => _temp;

  set temp(String newTemp) {
    _temp = newTemp;
    notifyListeners();
  }
}