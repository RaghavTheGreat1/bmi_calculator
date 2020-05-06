import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

class MaterialCardLabel extends StatelessWidget {
  final Color labelTextColor;
  final String labelText;

  MaterialCardLabel({@required this.labelText,@required this.labelTextColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      labelText,
      textAlign: TextAlign.center,
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