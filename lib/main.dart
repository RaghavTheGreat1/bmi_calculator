import 'package:flutter/material.dart';
import 'main_page.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'themes/dark_theme.dart';
import 'themes/colors.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        primaryColor: kPrimaryDarkThemeColor,
        scaffoldBackgroundColor: kScaffoldDarkThemeBackgroundColor,
        textTheme : GoogleFonts.openSansTextTheme(), 
       ),

      home: Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
          centerTitle: true,
        ),
        body: MainPage(),
      ),
    );
  }
}