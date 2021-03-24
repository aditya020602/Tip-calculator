import 'package:flutter/material.dart';
import './pg1.dart';
import './pg2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Tip Calculator', home: Pg1());
  }
}
