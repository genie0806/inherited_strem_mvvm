import 'dart:async';

import 'package:exam_inherited_mvvm/stream/stream_contrlloer.dart';

class Counter {
  final countStreamController = StreamController<int>()..add(0);
  int _count = 0;
  Stream<int> get countStream => countStreamController.stream;
  int count = 0;
  void increment() {
    _count++;
    countStreamController.add(_count);
  }
}
