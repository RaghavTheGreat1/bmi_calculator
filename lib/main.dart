import 'package:bmi_calculator/themes/constant_colors.dart';
import 'package:bmi_calculator/screens/main_page.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryDarkThemeColor,
        scaffoldBackgroundColor: kScaffoldDarkThemeBackgroundColor,
        textTheme: GoogleFonts.openSansTextTheme(),
      ),
      home: Scaffold(
        body: MainPage(),
      ),
    );
  }
}
