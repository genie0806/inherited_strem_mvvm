import 'package:exam_inherited_mvvm/inhereited_widget_sample.dart';
import 'package:exam_inherited_mvvm/my_color.dart';
import 'package:exam_inherited_mvvm/stream/counter.dart';
import 'package:exam_inherited_mvvm/stream/counter_inheritedwidget.dart';
import 'package:exam_inherited_mvvm/stream/inherited_widget_2.dart';
import 'package:exam_inherited_mvvm/stream/stream_contrlloer.dart';
import 'package:exam_inherited_mvvm/stream/stream_inherited.dart';
import 'package:exam_inherited_mvvm/stream/stream_sample_view_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyColor(child: Myapp(), color: Colors.red));
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'demo',
        home: StreamViewModelInheritedWidget(
            viewModel: StreamViewModel(), child: const StreamControllerSample()));
  }
}
