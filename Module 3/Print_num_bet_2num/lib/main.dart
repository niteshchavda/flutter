
import 'package:flutter/material.dart';
import 'package:input_2_num/FirstScreen.dart';

import 'SecondScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}