import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

import 'constant_colors.dart';

  ThemeData buildDarkThemeData() {
    return ThemeData(
      primaryColor: kPrimaryDarkThemeColor,
      scaffoldBackgroundColor: kScaffoldDarkThemeBackgroundColor,
      textTheme: GoogleFonts.openSansTextTheme(),
    );
  }