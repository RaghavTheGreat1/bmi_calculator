import 'package:bmi_calculator/themes/dark_theme.dart';

import 'package:bmi_calculator/screens/main_page.dart';

import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildDarkThemeData(),
      home: Scaffold(
        body: MainPage(),
      ),
    );
  }
}