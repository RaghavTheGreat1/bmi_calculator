import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:google_fonts/google_fonts.dart';

class MaterialCardLabel extends StatelessWidget {
  final Color labelTextColor = kMaterialCardLabelTextColor;
  final String labelText;

  MaterialCardLabel({@required this.labelText,});

  @override
  Widget build(BuildContext context) {
    return Text(
      labelText,
      style: GoogleFonts.openSans(
        textStyle: TextStyle(
          color: kMaterialCardLabelTextColor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}