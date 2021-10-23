import 'package:exam_inherited_mvvm/stream/counter_repository.dart';

class DoubleCounter implements CounterRepository {
  int _count = 0;

  @override
  int get count => _count;

  @override
  void increase() {
    _count = _count + 2;
  }
}
