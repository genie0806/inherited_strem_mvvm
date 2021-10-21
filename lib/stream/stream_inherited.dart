import 'package:exam_inherited_mvvm/stream/stream_sample_view_model.dart';
import 'package:flutter/material.dart';

class StreamViewModelInheritedWidget extends InheritedWidget {
  final StreamViewModel viewModel;

  const StreamViewModelInheritedWidget(
      {Key? key, required this.child, required this.viewModel})
      : super(key: key, child: child);

  final Widget child;

  static StreamViewModelInheritedWidget? of(BuildContext context) {
    final result = context
        .dependOnInheritedWidgetOfExactType<StreamViewModelInheritedWidget>();
    return result;
  }

  @override
  bool updateShouldNotify(StreamViewModelInheritedWidget oldWidget) {
    return true;
  }
}
