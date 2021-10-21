import 'dart:async';

import 'package:exam_inherited_mvvm/stream/counter.dart';
import 'package:flutter/material.dart';

class StreamViewModel {
  final _counter = Counter();
  final countStreamController = StreamController<int>()..add(0);
  int _count = 0;
  Stream<int> get countStream => countStreamController.stream;
  void countincrement() {
    _counter.count++;
    countStreamController.add(_counter.count);
  }
}
