import 'package:exam_inherited_mvvm/stream/counter.dart';
import 'package:flutter/material.dart';

class CounterInheritedWidget extends InheritedWidget {
  final Counter counter;
  final Widget child;

  const CounterInheritedWidget(
      {Key? key, required this.child, required this.counter})
      : super(key: key, child: child);

  static CounterInheritedWidget? of(BuildContext context) {
    final CounterInheritedWidget? result =
        context.dependOnInheritedWidgetOfExactType<CounterInheritedWidget>();
    assert(result != null, '망함');
    return result!;
  }

  @override
  bool updateShouldNotify(CounterInheritedWidget oldWidget) {
    return oldWidget.counter.count != counter.count;
  }
}
