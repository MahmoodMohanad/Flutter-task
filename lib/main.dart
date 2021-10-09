import 'package:flutter/material.dart';
import 'package:flutter_task_1/widgets/box_text.dart';
import 'package:flutter_task_1/widgets/item_box.dart';

void main() {
  runApp(const Fooder());
}

class Fooder extends StatelessWidget {
  const Fooder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Center(child: Text("Fooder")),
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(children: const [
                ItemBox(),
                BoxHeadline(
                  firstLine: 'Editor\'s Choice',
                  secondLine: 'The Art of Dough',
                )
              ]),
            )));
  }
}
