import 'package:flutter/material.dart';
import 'main_page.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar(

        ),
        body: MainPage(),
      ),
    );
  }
}