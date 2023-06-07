import 'package:flutter/material.dart';

class TempProvider extends ChangeNotifier {
  String _temp = 'S1';
  String get temp => _temp;

  set temp(String newTemp) {
    _temp = newTemp;
    notifyListeners();
  }
}