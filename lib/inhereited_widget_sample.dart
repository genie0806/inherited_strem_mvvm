import 'package:exam_inherited_mvvm/my_color.dart';
import 'package:flutter/material.dart';

class InheritedWidgetSample extends StatefulWidget {
  const InheritedWidgetSample({Key? key}) : super(key: key);

  @override
  State<InheritedWidgetSample> createState() => _InheritedWidgetSampleState();
}

class _InheritedWidgetSampleState extends State<InheritedWidgetSample> {
  var _color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InheritedWidget_Sample'),
      ),
      body: Container(
          color: Colors.white,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                MyColor? myColor = MyColor.of(context);
                _color = myColor!.color;
              });
            },
            child: const Text('클릭'),
          )),
    );
  }
}

//예를 들면 클릭시 색을 바꾸고싶다.
