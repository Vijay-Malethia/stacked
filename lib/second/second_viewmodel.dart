import 'package:flutter/material.dart';

// ViewModel
class SecondViewModel extends ChangeNotifier {
  String title = 'second screen';

  void initialise() {
    title = 'Second Screen';
    notifyListeners();
  }

  int counter = 0;
  void updateTitle() {
    counter++;
    title = 'SecondScreen$counter';
    notifyListeners();
  }
}
