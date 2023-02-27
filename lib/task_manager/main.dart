import 'package:flutter/material.dart';
import 'package:flutter_application_1/results/result_list.dart';
import 'task_main.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskMain(),
    );
  }
}
