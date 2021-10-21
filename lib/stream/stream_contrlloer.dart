import 'package:exam_inherited_mvvm/stream/counter.dart';
import 'package:exam_inherited_mvvm/stream/counter_inheritedwidget.dart';
import 'package:flutter/material.dart';

class StreamControllerSample extends StatelessWidget {
  final counter = Counter();
  StreamControllerSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = CounterInheritedWidget.of(context)!.counter;
    return Scaffold(
      appBar: AppBar(
        title: const Text('streamController'),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<int>(
              stream: counter.countStream,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                return Text('${snapshot.data}');
              },
            ),
            ElevatedButton(
              onPressed: () {
                counter.increment();
              },
              child: const Text('클릭'),
            ),
          ],
        )),
      ),
    );
  }
}
