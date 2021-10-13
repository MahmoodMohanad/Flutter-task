import 'package:flutter/material.dart';
import 'package:flutter_task_1/widgets/box_text.dart';
import 'package:flutter_task_1/widgets/item_box.dart';

void main() {
  runApp(const Fooder());
}

class Fooder extends StatefulWidget {
  const Fooder({Key? key}) : super(key: key);

  @override
  State<Fooder> createState() => _FooderState();
}

class _FooderState extends State<Fooder> {
  int currentIndex = 0;
  List<Widget> page = const [
    ItemBox(),
    BoxHeadline(
      firstLine: 'Editor\'s Choice',
      secondLine: 'The Art of Dough',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Center(child: Text("Fooder")),
            ),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: page[currentIndex],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
                onTap: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                currentIndex: currentIndex,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.ac_unit), label: '2nd')
                ])));
  }
}
