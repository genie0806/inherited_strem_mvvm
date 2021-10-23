import 'package:exam_inherited_mvvm/stream/counter.dart';
import 'package:exam_inherited_mvvm/stream/counter_inheritedwidget.dart';
import 'package:exam_inherited_mvvm/stream/stream_inherited.dart';
import 'package:exam_inherited_mvvm/stream/stream_sample_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StreamControllerSample extends StatelessWidget {
  const StreamControllerSample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final viewModel = Provider.of<StreamViewModel>(context);
    final viewModel = context.watch<StreamViewModel>();
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
            Text('${viewModel.count}'),
            ElevatedButton(
              onPressed: () {
                //Provider.of<StreamViewModel>(context, listen: false).countincrement();
                context.read<StreamViewModel>().countincrement();
              },
              child: const Text('클릭'),
            ),
          ],
        )),
      ),
    );
  }
}
