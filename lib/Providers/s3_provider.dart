import 'package:flutter/material.dart';

class S3Provider extends ChangeNotifier {
  String _s3 = 'S3';
  String get s3 => _s3;

  set s3(String newS3) {
    _s3 = newS3;
    notifyListeners();
  }
}