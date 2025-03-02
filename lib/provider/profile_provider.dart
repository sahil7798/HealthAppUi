import 'package:flutter/material.dart';

class ProfileProvider with ChangeNotifier {
  String toggle = "Connect";
  void deviceToggle({required label}) {
    toggle = label;
    notifyListeners();
  }
}
