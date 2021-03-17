import 'package:flutter/material.dart';
import 'package:solid_software_test/pages/HomePage.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  final String title = 'Solid Software Test';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      home: HomePage(
        title: title,
      ),
    );
  }
}
