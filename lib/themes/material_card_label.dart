import 'package:flutter/material.dart';
import 'variable_colors.dart';
//import 'package:bmi_calculator/themes/constant_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class MaterialCardLabel extends StatelessWidget {
  final Color labelTextColor = materialCardLabelTextColor;
  final String labelText;

  MaterialCardLabel({@required this.labelText,});

  @override
  Widget build(BuildContext context) {
    return Text(
      labelText,
      style: GoogleFonts.openSans(
        textStyle: TextStyle(
          color: materialCardLabelTextColor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}