import 'package:flutter/material.dart';

import 'task_item/task_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Directionality(
          textDirection: TextDirection.rtl, child: TaskItem()),
    );
  }
}
