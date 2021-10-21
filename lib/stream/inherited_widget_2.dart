import 'package:exam_inherited_mvvm/stream/counter.dart';
import 'package:exam_inherited_mvvm/stream/counter_inheritedwidget.dart';
import 'package:flutter/material.dart';

class InheritedWidget2 extends StatefulWidget {
  const InheritedWidget2({Key? key}) : super(key: key);

  @override
  State<InheritedWidget2> createState() => _InheritedWidget2State();
}

class _InheritedWidget2State extends State<InheritedWidget2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('streamController'),
      ),
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${CounterInheritedWidget.of(context)!.counter.count}'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  CounterInheritedWidget.of(context)!.counter.count++;
                });
              },
              child: const Text('클릭'),
            ),
          ],
        )),
      ),
    );
  }
}
