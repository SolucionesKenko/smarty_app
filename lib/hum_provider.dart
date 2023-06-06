import 'package:flutter/material.dart';

class HumProvider extends ChangeNotifier {
  String _hum = 'Humedad';
  String get hum => _hum;

  set hum(String newHum) {
    _hum = newHum;
    notifyListeners();
  }
}