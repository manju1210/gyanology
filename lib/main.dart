import 'package:flutter/material.dart';
import 'package:gyanology/gyanology_screen.dart';
import 'package:gyanology/ssc_cgl_test1_screen.dart';
import 'package:gyanology/test_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TestScreen(),
    );
  }
}

