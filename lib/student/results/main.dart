import 'package:flutter/material.dart';
import 'package:flutter_application_1/student/results/result_list.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResultList(),
    );
  }
}
