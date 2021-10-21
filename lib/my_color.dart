import 'package:flutter/material.dart';

class MyColor extends InheritedWidget {
  final Color color;
  const MyColor({Key? key, required this.child, required this.color})
      : super(key: key, child: child);

  final Widget child;

  static MyColor? of(BuildContext context) {
    final MyColor? result =
        context.dependOnInheritedWidgetOfExactType<MyColor>();
    assert(result != null, '망함');
    return result;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
