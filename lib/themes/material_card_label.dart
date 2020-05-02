import 'package:flutter/material.dart';
//import 'package:bmi_calculator/themes/constant_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class MaterialCardLabel extends StatelessWidget {
  final Color labelTextColor;
  final String labelText;

  MaterialCardLabel({@required this.labelText,@required this.labelTextColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      labelText,
      style: GoogleFonts.openSans(
        textStyle: TextStyle(
          color: labelTextColor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}