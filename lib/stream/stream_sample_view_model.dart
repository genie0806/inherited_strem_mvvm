import 'package:exam_inherited_mvvm/stream/counter.dart';
import 'package:flutter/material.dart';

class StreamViewModel with ChangeNotifier {
  final counter = Counter();

  int get count => counter.count;

  void countincrement() {
    counter.count++;
    notifyListeners();
  }
}
